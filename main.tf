# main.tf
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# MongoDB ConfigMap
resource "kubernetes_config_map" "mongodb" {
  metadata {
    name = "mongodb-config"
  }
  data = {
    MONGODB_URI = "mongodb://mongo-service:27017/mydatabase"
  }
}

# Persistent Volume
resource "kubernetes_persistent_volume" "mongo_pv" {
  metadata {
    name = "mongo-pv"
  }
  spec {
    capacity = {
      storage = "2Gi"
    }
    access_modes = ["ReadWriteOnce"]
    persistent_volume_source {
      host_path {
        path = "/Test"
        type = "DirectoryOrCreate"
      }
    }
    claim_ref {
      namespace = "default"
      name      = "mongo-pvc"
    }
    storage_class_name = "standard"
  }
}

# Persistent Volume Claim
resource "kubernetes_persistent_volume_claim" "mongo_pvc" {
  metadata {
    name = "mongo-pvc"
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = "2Gi"
      }
    }
    volume_name = kubernetes_persistent_volume.mongo_pv.metadata[0].name
    storage_class_name = "standard"
  }
}

# MongoDB Deployment
resource "kubernetes_deployment" "mongo" {
  metadata {
    name = "mongo-deployment"
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "mongo"
      }
    }
    template {
      metadata {
        labels = {
          app = "mongo"
        }
      }
      spec {
        container {
          name  = "mongo"
          image = "mongo:latest"
          port {
            container_port = 27017
          }
          volume_mount {
            name       = "mongo-storage"
            mount_path = "/data/db"
          }
        }
        volume {
          name = "mongo-storage"
          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.mongo_pvc.metadata[0].name
          }
        }
      }
    }
  }
  depends_on = [
    kubernetes_persistent_volume_claim.mongo_pvc
  ]
}

# App Deployment
resource "kubernetes_deployment" "app" {
  metadata {
    name = "app-deployment"
    annotations = {
      "kubernetes.io/change-cause" = "Descente de version 1.0"
    }
  }
  spec {
    replicas = 3
    selector {
      match_labels = {
        app = "myapp"
      }
    }
    template {
      metadata {
        labels = {
          app = "myapp"
        }
      }
      spec {
        container {
          name  = "myapp"
          image = "jeanmassip/go-simple:1.1"
          port {
            container_port = 80
          }
          env_from {
            config_map_ref {
              name = kubernetes_config_map.mongodb.metadata[0].name
            }
          }
        }
      }
    }
  }
  depends_on = [
    kubernetes_deployment.mongo
  ]
}

# MongoDB Service
resource "kubernetes_service" "mongo" {
  metadata {
    name = "mongo-service"
  }
  spec {
    selector = {
      app = "mongo"
    }
    port {
      port        = 27017
      target_port = 27017
      protocol    = "TCP"
    }
    type = "ClusterIP"
  }
}

# App Service
resource "kubernetes_service" "app" {
  metadata {
    name = "app-service"
  }
  spec {
    selector = {
      app = "myapp"
    }
    port {
      port        = 80
      target_port = 8080
      protocol    = "TCP"
    }
    type = "NodePort"
  }
}

# Ingress
resource "kubernetes_ingress_v1" "app" {
  metadata {
    name = "app-ingress"
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    }
  }
  spec {
    rule {
      host = "localhost"
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = kubernetes_service.app.metadata[0].name
              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
  depends_on = [
    kubernetes_service.app
  ]
}