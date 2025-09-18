# TP-Kebernates-DevOpSec 🛡️🚀

[![GitHub license](https://img.shields.io/github/license/YOUR_GITHUB_USERNAME/TP-Kebernates-DevOpSec)](LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/YOUR_GITHUB_USERNAME/TP-Kebernates-DevOpSec)](https://github.com/YOUR_GITHUB_USERNAME/TP-Kebernates-DevOpSec/commits/main)
[![GitHub issues](https://img.shields.io/github/issues/YOUR_GITHUB_USERNAME/TP-Kebernates-DevOpSec)](https://github.com/YOUR_GITHUB_USERNAME/TP-Kebernates-DevOpSec/issues)


Ce projet est un exercice pratique (TP) illustrant les concepts clés de DevOpSec sur Kubernetes à l'aide de Terraform et Docker.  Il déploie une application simple avec une base de données MongoDB, intégrant des considérations de sécurité et de gestion du cycle de vie des déploiements.


## Fonctionnalités Principales ✨

* **Provisionnement d'infrastructure:** Déploiement d'un cluster Kubernetes local avec Kind.
* **Stockage persistant:**  Configuration du stockage persistant pour MongoDB.
* **Déploiement d'application:** Déploiement d'une application conteneurisée avec Docker.
* **Gestion de configuration:** Utilisation de ConfigMaps pour gérer la configuration de MongoDB.
* **Services et Ingress:** Exposition de l'application via un service Kubernetes et un Ingress.
* **Rollback automatisé:** Script pour le rollback en cas d'échec du déploiement.
* **Gestion d'état Terraform:** Utilisation de `terraform.tfstate` pour gérer l'état de l'infrastructure.
* **Intégration continue/continue delivery (CI/CD) (implicite):**  Les scripts permettent de reproduire facilement le déploiement.


## Installation 🛠️

1. **Prérequis:** Assurez-vous d'avoir installé Docker, Kind, Kubectl et Terraform.
2. **Cloner le dépôt:** `git clone https://github.com/YOUR_GITHUB_USERNAME/TP-Kebernates-DevOpSec.git`
3. **Naviguer vers le répertoire:** `cd TP-Kebernates-DevOpSec`


## Utilisation 🚀

1. **Démarrer le cluster Kubernetes:** `./start-cluster.sh`
2. **Déployer l'infrastructure avec Terraform:** `./terraform-deploy.sh`
3. **(Optionnel) Vérifier l'état de l'infrastructure:** `terraform state list`
4. **Accéder à l'application:** L'adresse de l'application sera affichée après le déploiement réussi (généralement via l'Ingress).
5. **Pour supprimer l'infrastructure:** `terraform destroy` (utiliser avec précaution !)


## Structure du Projet 📁

```
TP-Kebernates-DevOpSec/
├── .github/                     # Configuration GitHub Actions (si applicable)
├── .gitignore                   # Fichiers à ignorer par Git
├── .terraform.lock.hcl          # Verrouillage des versions des modules Terraform
├── .terraform/                   # État interne de Terraform
├── 00-kind-config.yml           # Configuration de Kind
├── 01-persistent-storage.yml   # Définition du stockage persistant
├── 02-mongodb-configmap.yml     # ConfigMap pour MongoDB
├── 03-mongodb-deployment.yml   # Déploiement de MongoDB
├── 04-app-deployment.yml       # Déploiement de l'application
├── 05-services.yml             # Définition des services Kubernetes
├── 06-ingress.yml              # Définition de l'Ingress
├── Dockerfile                   # Dockerfile de l'application
├── README.md                    # Ce fichier
├── docker-compose.yml           # (Optionnel) Configuration Docker Compose
├── documentation/               # Documentation supplémentaire
├── main.tf                      # Configuration principale Terraform
├── rollback-on-fail.sh          # Script de rollback
├── start-cluster.sh             # Script de démarrage du cluster Kind
├── terraform-deploy.sh          # Script de déploiement Terraform
├── terraform.tfstate            # État de l'infrastructure Terraform
├── terraform.tfstate.backup     # Sauvegarde de l'état Terraform
```


## Technologies Utilisées 💻

* **Terraform:** Pour le provisionnement d'infrastructure.
* **Kubernetes:** Pour l'orchestration des conteneurs.
* **Docker:** Pour la conteneurisation de l'application.
* **MongoDB:** Pour la base de données.
* **Kind:** Pour créer un cluster Kubernetes local.
* **HCL:** Langage de configuration de Terraform.
* **YAML:** Langage de configuration de Kubernetes.
* **Bash:** Pour les scripts d'automatisation.


## Contribution 🤝

Les contributions sont les bienvenues !  Veuillez ouvrir une issue pour discuter des nouvelles fonctionnalités ou des bogues avant de soumettre une pull request.


## Licence 📄

[Spécifiez votre licence ici, par exemple MIT License](LICENSE)


N'oubliez pas de remplacer `YOUR_GITHUB_USERNAME` par votre nom d'utilisateur GitHub.  Ce README est un exemple, adaptez-le à votre projet spécifique.
 
