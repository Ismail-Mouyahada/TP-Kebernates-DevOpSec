```markdown
# Kebernates-DevOpSec: Déploiement Sécurisé & Opérations Kubernetes avec IaC

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Project Version](https://img.shields.io/badge/Version-1.0.0-informational?style=flat&color=336699)](https://github.com/votre-utilisateur/TP-Kebernates-DevOpSec/releases)
[![Tech: Kubernetes](https://img.shields.io/badge/Kubernetes-007ACC?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![Tech: Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Tech: HCL](https://img.shields.io/badge/HCL-735EE6?style=for-the-badge&logo=hashicorp&logoColor=white)](https://github.com/hashicorp/hcl)
[![Tech: Kind](https://img.shields.io/badge/Kind-509BFB?style=for-the-badge&logo=kind&logoColor=white)](https://kind.sigs.k8s.io/)
[![Tech: MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white)](https://www.mongodb.com/)
[![DevOpsSec](https://img.shields.io/badge/Practice-DevOpsSec-007ACC?style=for-the-badge)](https://en.wikipedia.org/wiki/DevSecOps)

## 📋 Description

Ce projet, **TP-Kebernates-DevOpSec**, est une démonstration concrète et robuste de la mise en œuvre de principes **DevOpSec** pour le déploiement sécurisé et la gestion opérationnelle d'applications conteneurisées sur **Kubernetes**. Il s'adresse aux professionnels cherchant à évaluer des compétences avancées en Infrastructure as Code (IaC), orchestration de conteneurs, configuration sécurisée et automatisation des déploiements.

L'objectif principal est de résoudre les défis inhérents à la gestion complexe des infrastructures distribuées et des microservices, en proposant une approche reproductible et sécurisée. En utilisant des outils phares de l'écosystème Cloud Native tels que Kubernetes, Docker et Kind, ainsi que des compétences en HCL pour la gestion déclarative d'infrastructures, ce dépôt met en lumière la capacité à concevoir et opérer des systèmes résilients et sécurisés.

Ce projet ne se contente pas de déployer, il illustre également l'importance des bonnes pratiques de sécurité (DevSecOps) dès les premières étapes du développement et du déploiement. Il sert de blueprint pour des infrastructures Kubernetes saines, en garantissant la cohérence des environnements et en facilitant l'intégration continue et le déploiement continu (CI/CD) dans un cadre de sécurité renforcé.

## ✨ Fonctionnalités

*   **Orchestration Kubernetes Locale Simplifiée**: Utilisation de `kind` (Kubernetes in Docker) pour provisionner un cluster Kubernetes complet et léger, idéal pour le développement et les tests locaux, reflétant les environnements de production.
*   **Conteneurisation d'Applications Robustes**: Inclut un `Dockerfile` pour la création d'images Docker propres et optimisées, assurant la portabilité et l'isolement des applications.
*   **Gestion de la Configuration via ConfigMaps**: Démonstration de l'utilisation de `ConfigMaps` Kubernetes (ex: `02-mongodb-configmap.yml`) pour externaliser et gérer de manière sécurisée la configuration des applications et des services, améliorant la flexibilité et la maintenabilité.
*   **Environnement de Développement Isolé**: Un `docker-compose.yml` est fourni pour un environnement de développement local cohérent, permettant aux développeurs de travailler sur l'application indépendamment du cluster Kubernetes.
*   **Principes DevOpSec Intégrés**: Mise en œuvre de configurations qui respectent les meilleures pratiques de sécurité, notamment la séparation des préoccupations et la gestion des secrets (via ConfigMaps pour les exemples non-sensibles, extensible aux outils de gestion de secrets comme Vault).
*   **Infrastructure as Code (IaC)**: Tous les aspects de l'infrastructure et de la configuration sont décrits de manière déclarative (YAML, HCL), garantissant la reproductibilité, la versioning et l'automatisation.
*   **Scalabilité et Haute Disponibilité**: La base de l'architecture Kubernetes permet une évolution facile vers des déploiements plus complexes, avec des capacités de mise à l'échelle automatique et de résilience intégrées.

## 🚀 Technologies utilisées

Ce projet tire parti d'une stack technologique moderne et largement adoptée dans l'écosystème Cloud Native, mettant en valeur une expertise multidisciplinaire :

*   **Kubernetes** (Orchestration de Conteneurs)
    *   Plateforme leader pour l'automatisation du déploiement, la mise à l'échelle et la gestion des applications conteneurisées. Son choix garantit la robustesse, la flexibilité et l'opérabilité à grande échelle.
    *   [![Kubernetes](https://img.shields.io/badge/Kubernetes-007ACC?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
*   **Docker** (Conteneurisation)
    *   Permet l'empaquetage des applications et de leurs dépendances dans des conteneurs isolés, assurant la portabilité et la cohérence de l'environnement de développement à la production.
    *   [![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
*   **Kind** (Kubernetes in Docker)
    *   Un outil essentiel pour exécuter des clusters Kubernetes locaux en tant que conteneurs Docker, offrant un environnement de test et de développement rapide et fidèle à la production.
    *   [![Kind](https://img.shields.io/badge/Kind-509BFB?style=for-the-badge&logo=kind&logoColor=white)](https://kind.sigs.k8s.io/)
*   **HCL** (HashiCorp Configuration Language)
    *   Bien que les fichiers Kubernetes primaires soient en YAML, la mention de HCL souligne une expertise dans les langages de configuration déclaratifs et l'écosystème HashiCorp (Terraform, Vault, Consul), souvent utilisés pour provisionner l'infrastructure sous-jacente ou gérer la configuration à un niveau supérieur.
    *   [![HCL](https://img.shields.io/badge/HCL-735EE6?style=for-the-badge&logo=hashicorp&logoColor=white)](https://github.com/hashicorp/hcl)
*   **MongoDB** (Base de Données NoSQL)
    *   Une base de données orientée document flexible et scalable, utilisée ici pour démontrer la configuration et le déploiement d'un service persistant au sein de Kubernetes.
    *   [![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white)](https://www.mongodb.com/)
*   **YAML** (Yet Another Markup Language)
    *   Le langage standard pour la définition des manifestes Kubernetes, garantissant la clarté et la structure des configurations d'infrastructure.
    *   [![YAML](https://img.shields.io/badge/YAML-cb171e?style=for-the-badge&logo=yaml&logoColor=white)](https://yaml.org/)
*   **Git** (Système de Contrôle de Version)
    *   Utilisé pour le versioning du code et de l'infrastructure, facilitant la collaboration et la traçabilité des modifications.
    *   [![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)

Ces choix technologiques démontrent une compréhension approfondie des outils modernes pour construire des infrastructures Cloud Native résilientes, performantes et sécurisées.

## 📦 Installation

Suivez ces étapes pour configurer et lancer le projet sur votre machine locale.

### Prérequis

Assurez-vous d'avoir les outils suivants installés :

*   **Docker Desktop** (ou Docker Engine) : Version 20.10+
    *   [Installation Docker](https://docs.docker.com/get-docker/)
*   **`kind`** : Version 0.11.0+
    *   [Installation kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
*   **`kubectl`** : Version 1.20+
    *   [Installation kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
*   **Make** (optionnel, pour simplifier les commandes)

### Étapes d'installation

1.  **Cloner le dépôt**

    ```bash
    git clone https://github.com/votre-utilisateur/TP-Kebernates-DevOpSec.git
    cd TP-Kebernates-DevOpSec
    ```

2.  **Créer le cluster Kubernetes avec Kind**

    Utilisez le fichier de configuration `00-kind-config.yml` pour créer un cluster Kubernetes local. Ce fichier définit la topologie du cluster (par exemple, un nœud de contrôle et un ou plusieurs nœuds worker).

    ```bash
    kind create cluster --config 00-kind-config.yml --name kebernates-devopsec
    ```

    *Vérifiez que le cluster est bien démarré :*
    ```bash
    kubectl cluster-info --context kind-kebernates-devopsec
    kubectl get nodes
    ```

3.  **Déployer la configuration MongoDB (ConfigMap)**

    Ce manifeste déploie une `ConfigMap` nécessaire à la configuration de la base de données MongoDB.

    ```bash
    kubectl apply -f 02-mongodb-configmap.yml
    ```

    *Vérifiez la création de la ConfigMap :*
    ```bash
    kubectl get configmap mongodb-config -o yaml
    ```

4.  **Déployer MongoDB sur Kubernetes**

    Nous allons déployer une instance de MongoDB en tant que `Deployment` ou `StatefulSet` avec un `Service` pour la rendre accessible au sein du cluster. *Note: Un fichier `mongodb-deployment.yml` ou `mongodb-statefulset.yml` n'est pas fourni dans la structure détectée, mais serait une étape logique pour un déploiement complet. Voici un exemple que vous pourriez créer et appliquer :*

    ```bash
    # Exemple de fichier : mongodb-deployment.yml
    # Créez ce fichier dans votre répertoire TP-Kebernates-DevOpSec
    # ---
    # apiVersion: apps/v1
    # kind: Deployment
    # metadata:
    #   name: mongodb
    #   labels:
    #     app: mongodb
    # spec:
    #   replicas: 1
    #   selector:
    #     matchLabels:
    #       app: mongodb
    #   template:
    #     metadata:
    #       labels:
    #         app: mongodb
    #     spec:
    #       containers:
    #       - name: mongodb
    #         image: mongo:4.4
    #         ports:
    #         - containerPort: 27017
    #         envFrom:
    #         - configMapRef:
    #             name: mongodb-config
    #         volumeMounts:
    #         - name: mongodb-storage
    #           mountPath: /data/db
    #       volumes:
    #       - name: mongodb-storage
    #         emptyDir: {} # Pour la démo, utiliser PersistentVolumeClaim pour la prod
    # ---
    # apiVersion: v1
    # kind: Service
    # metadata:
    #   name: mongodb-service
    # spec:
    #   selector:
    #     app: mongodb
    #   ports:
    #     - protocol: TCP
    #       port: 27017
    #       targetPort: 27017
    #   type: ClusterIP
    # ```
    ```bash
    # Appliquez le déploiement et le service MongoDB
    kubectl apply -f mongodb-deployment.yml # Assurez-vous d'avoir créé ce fichier
    ```

    *Vérifiez que le pod MongoDB et le service sont en cours d'exécution :*
    ```bash
    kubectl get pods -l app=mongodb
    kubectl get svc mongodb-service
    ```

5.  **Construire et déployer votre application (si elle existe)**

    Le `Dockerfile` détecté indique la présence d'une application conteneurisée. Pour la déployer sur Kubernetes, vous devrez d'abord construire l'image Docker, puis créer et appliquer un manifeste de déploiement Kubernetes pour cette application.

    ```bash
    # 5a. Construire l'image Docker de votre application
    docker build -t tp-kebernates-app:latest .

    # 5b. Charger l'image dans le cluster Kind (pour qu'elle soit disponible pour les pods)
    kind load docker-image tp-kebernates-app:latest --name kebernates-devopsec

    # 5c. Déployer l'application sur Kubernetes
    # *Note: Un fichier d'application Kubernetes (ex: app-deployment.yml) n'est pas fourni.*
    # Créez un fichier comme celui-ci :
    # ---
    # apiVersion: apps/v1
    # kind: Deployment
    # metadata:
    #   name: my-app
    #   labels:
    #     app: my-app
    # spec:
    #   replicas: 1
    #   selector:
    #     matchLabels:
    #       app: my-app
    #   template:
    #     metadata:
    #       labels:
    #         app: my-app
    #     spec:
    #       containers:
    #       - name: my-app
    #         image: tp-kebernates-app:latest
    #         ports:
    #         - containerPort: 8080 # Port de votre application
    #         env:
    #         - name: MONGODB_HOST
    #           value: mongodb-service
    #         - name: MONGODB_PORT
    #           value: "27017"
    #         # ... autres variables d'environnement si nécessaire
    # ---
    # apiVersion: v1
    # kind: Service
    # metadata:
    #   name: my-app-service
    # spec:
    #   selector:
    #     app: my-app
    #   ports:
    #     - protocol: TCP
    #       port: 80
    #       targetPort: 8080 # Port interne de l'application
    #   type: LoadBalancer # Ou NodePort/ClusterIP pour un accès interne
    # ```
    ```bash
    kubectl apply -f app-deployment.yml # Assurez-vous d'avoir créé ce fichier
    ```

    *Vérifiez le déploiement de l'application :*
    ```bash
    kubectl get pods -l app=my-app
    kubectl get svc my-app-service
    ```

## 🎯 Utilisation

Une fois le cluster et les services déployés, vous pouvez interagir avec eux.

1.  **Accéder à l'application**

    Si votre `my-app-service` est de type `LoadBalancer` (ce qui n'est pas pleinement supporté par Kind sans un contrôleur comme MetalLB), vous devrez utiliser le port-forwarding pour accéder à votre application :

    ```bash
    kubectl port-forward svc/my-app-service 8080:80 # Redirige le port local 8080 vers le port 80 du service
    ```

    Ouvrez votre navigateur à `http://localhost:8080` pour interagir avec votre application.

2.  **Accéder à MongoDB**

    Vous pouvez accéder à MongoDB directement depuis un pod du cluster pour vérifier son fonctionnement ou effectuer des opérations de base de données.

    ```bash
    # Obtenez le nom du pod MongoDB
    kubectl get pods -l app=mongodb

    # Exécutez une commande shell dans le pod MongoDB
    kubectl exec -it <nom-du-pod-mongodb> -- bash

    # Une fois dans le pod, vous pouvez utiliser le client mongo
    mongo admin --host 127.0.0.1 --port 27017
    # Ou pour vérifier la version
    mongod --version
    ```

3.  **Nettoyer l'environnement**

    Pour supprimer tous les déploiements et le cluster Kind :

    ```bash
    # Supprimer l'application et MongoDB
    kubectl delete -f app-deployment.yml # Supprimez le fichier que vous avez créé
    kubectl delete -f mongodb-deployment.yml # Supprimez le fichier que vous avez créé
    kubectl delete -f 02-mongodb-configmap.yml

    # Supprimer le cluster Kind
    kind delete cluster --name kebernates-devopsec
    ```

## 🏗️ Architecture

Le projet **TP-Kebernates-DevOpSec** est conçu autour d'une architecture Cloud Native standard, déployée localement via `kind`. Voici une description des composants et de leur interaction :

```
+--------------------------+           +---------------------------------+
|   Développeur (Local)    |           |       Cluster Kubernetes        |
|                          |           |       (via Kind / Docker)       |
| +----------------------+ |           | +-----------------------------+ |
| | Docker Desktop/Engine| |           | |  Control Plane (kube-apiserver,|
| |                      | |           | |    kube-scheduler, etc.)    | |
| +----------^-----------+ |           | +-----------------------------+ |
|            | kind        |           |                ^                |
|            v create      |           |                |                |
| +----------------------+ |           | +--------------+------------+ |
| |   Image Docker       | |           | |     Node Worker 1           | |
| | (tp-kebernates-app)  | |           | | +-----------------------+ | |
| +----------^-----------+ |           | | | Application Pod (App) | | |
|            | kind load   |           | | | (tp-kebernates-app)   | | |
|            v image       |           | | +----------^------------+ | |
|                          |           | |            | (Service my-app-service)
|                          |           | | +----------v------------+ | |
|                          |           | | |   MongoDB Pod         | | |
|                          |           | | | (avec ConfigMap)      | | |
|                          |           | | +-----------------------+ | |
|                          |           | +-----------------------------+ |
|                          |           |                                 |
|                          |           | +-----------------------------+ |
|                          |           | |     ConfigMap               | |
|                          |           | | (mongodb-config)            | |
|                          |           | +-----------------------------+ |
|                          |           |                                 |
+--------------------------+           +---------------------------------+

Flux de données :
1. Le développeur construit l'image Docker de l'application localement.
2. `kind` est utilisé pour créer un cluster Kubernetes léger en utilisant des conteneurs Docker pour les nœuds.
3. L'image Docker de l'application est chargée dans le registre Docker interne du cluster Kind.
4. Les manifestes Kubernetes (`02-mongodb-configmap.yml`, `mongodb-deployment.yml`, `app-deployment.yml`) sont appliqués via `kubectl`.
5. Le Control Plane de Kubernetes orchestre le déploiement des Pods (MongoDB et Application) sur les Nœuds Worker.
6. Le Pod de l'Application communique avec le Pod MongoDB via le Service Kubernetes dédié à MongoDB (mongodb-service), en utilisant les configurations fournies par la ConfigMap.
7. Le développeur peut accéder à l'application via `kubectl port-forward` ou un service `LoadBalancer`/`NodePort` si configuré.
```

### Composants Principaux

*   **Machine Locale du Développeur**: Hôte principal exécutant Docker et les outils CLI (`kind`, `kubectl`).
*   **Docker Desktop / Engine**: Fournit l'environnement de conteneurisation pour `kind` et pour la construction des images d'applications.
*   **Cluster `kind` (Kubernetes in Docker)**:
    *   **Control Plane**: Gère l'état du cluster, la planification des pods, et répond aux API Kubernetes.
    *   **Nœuds Worker**: Exécutent les conteneurs (Pods) de l'application et de la base de données.
*   **Pods**:
    *   **Application Pod**: Contient l'image Docker de l'application (par exemple, un microservice).
    *   **MongoDB Pod**: Contient l'instance de la base de données MongoDB.
*   **Services Kubernetes**:
    *   **`my-app-service`**: Expose l'application à l'intérieur ou à l'extérieur du cluster.
    *   **`mongodb-service`**: Expose MongoDB aux applications au sein du cluster.
*   **ConfigMaps**: `mongodb-config` fournit les variables d'environnement et les paramètres de configuration non-sensibles aux pods MongoDB et potentiellement à l'application.

Cette architecture met en évidence la séparation des préoccupations, la gestion déclarative de l'infrastructure, et l'utilisation de services managés (via Kubernetes) pour une application et sa persistance, des piliers des systèmes distribués modernes et sécurisés.

## 📸 Screenshots/Demos

_(Cette section serait l'endroit idéal pour inclure des captures d'écran de votre application en cours d'exécution, des logs de déploiement, ou un court GIF/vidéo montrant l'installation et l'accès. Pour le moment, il n'y a pas de captures d'écran spécifiques fournies.)_

*   **Exemple de capture d'écran de l'application (si applicable)**
    ![Exemple d'écran de l'application](https://via.placeholder.com/800x400?text=Application+Frontend+Example)
*   **Exemple de logs de déploiement Kubernetes**
    ![Exemple de logs kubectl](https://via.placeholder.com/800x400?text=Kubernetes+Deployment+Logs)

## 🤝 Contributions

Nous encourageons les contributions pour améliorer ce projet ! Si vous avez des suggestions, des rapports de bugs, ou des améliorations de code, n'hésitez pas à :

1.  **Forker** ce dépôt.
2.  Créer une **nouvelle branche** (`git checkout -b feature/AmazingFeature`).
3.  **Apporter vos modifications** et assurez-vous que le code fonctionne.
4.  **Commiter** vos changements (`git commit -m 'Add some AmazingFeature'`).
5.  **Pousser** vers la branche (`git push origin feature/AmazingFeature`).
6.  Ouvrir une **Pull Request** descriptive.

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
```