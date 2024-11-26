# Supprimez d'abord toutes les ressources existantes
kubectl delete ingress app-ingress
kubectl delete service app-service mongo-service
kubectl delete deployment app-deployment mongo-deployment
kubectl delete configmap mongodb-config
kubectl delete pvc mongo-pvc
kubectl delete pv mongo-pv


kubectl get all
kubectl get pv,pvc
kubectl get ingress

# Puis appliquez la configuration Terraform
terraform init && terraform apply -auto-approve