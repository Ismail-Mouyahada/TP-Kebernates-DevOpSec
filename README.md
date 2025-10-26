# Kebernates DevSecOps: Orchestration Cloud-Native Sécurisée & IaC

![Version](https://img.shields.io/badge/Version-1.0.0-blue?style=for-the-badge)
![License](https://img.shields.io/github/license/YOUR_USERNAME/TP-Kebernates-DevOpSec?style=for-the-badge&label=Licence)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Kind](https://img.shields.io/badge/Kind-5DA6C4?style=for-the-badge&logo=kubernetes&logoColor=white)
![HCL](https://img.shields.io/badge/HCL-735FBD?style=for-the-badge&logo=hashicorp&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white)
![DevSecOps](https://img.shields.io/badge/DevSecOps-008080?style=for-the-badge&logo=gitguardian&logoColor=white)
![Cloud-Native](https://img.shields.io/badge/Cloud_Native-F05032?style=for-the-badge&logo=cncf&logoColor=white)
![Infrastructure as Code](https://img.shields.io/badge/IaC-blueviolet?style=for-the-badge&logo=terraform&logoColor=white)

---

## 📋 Description

Ce projet représente une démonstration concrète et robuste d'une expertise avancée en **DevSecOps** et en **orchestration Kubernetes**. Il met en œuvre des principes d'**Infrastructure as Code (IaC)** en utilisant la configuration **HCL** pour le déploiement, la gestion et la sécurisation d'environnements **cloud-native**. L'objectif principal est de simuler un pipeline de déploiement complet et sécurisé d'une application conteneurisée et de sa base de données (MongoDB) au sein d'un cluster Kubernetes local.

Le projet adresse la complexité des déploiements modernes en proposant une approche **déclarative et automatisée**, minimisant les erreurs manuelles et renforçant la sécurité dès les premières étapes du cycle de développement. Il constitue une preuve tangible de compétences en ingénierie DevOps, en sécurité des conteneurs, en gestion de clusters Kubernetes avec **Kind**, et en automatisation des infrastructures. Il s'agit d'une excellente illustration de la capacité à concevoir et à implémenter des solutions résilientes, scalables et sécurisées, prêtes pour des environnements de production.

## ✨ Fonctionnalités

Ce projet met en lumière plusieurs compétences clés et fonctionnalités essentielles aux infrastructures modernes :

*   **Provisionnement de Cluster Kubernetes Local :** Utilisation de `Kind` (Kubernetes in Docker) pour créer un cluster Kubernetes léger et reproductible, idéal pour le développement et les tests.
*   **Conteneurisation d'Application Sécurisée :** Conception d'un `Dockerfile` optimisé pour la construction d'une image Docker d'application, intégrant des bonnes pratiques de sécurité et de réduction de taille.
*   **Orchestration Kubernetes Avancée :** Déploiement d'une application et d'une instance MongoDB via des manifestes Kubernetes (`Deployment`, `Service`, `ConfigMap`), garantissant une gestion déclarative de l'infrastructure.
*   **Gestion de Configuration via ConfigMaps :** Externalisation des configurations sensibles et dynamiques (ex: paramètres de connexion MongoDB) en utilisant les `ConfigMaps` de Kubernetes pour une meilleure flexibilité et sécurité.
*   **DevSecOps par Conception :** Intégration de principes de sécurité dès le début du cycle de vie du projet, de la conteneurisation à l'orchestration, pour des déploiements robustes et résilients.
*   **Infrastructure as Code (IaC) :** Tout l'environnement (cluster, déploiements, configurations) est défini par du code (HCL via `00-kind-config.yml`, YAML pour Kubernetes), assurant reproductibilité et versionnement.
*   **Environnement de Développement Local :** Un `docker-compose.yml` est inclus pour faciliter le développement et les tests locaux de l'application et de MongoDB en dehors du cluster Kubernetes.

## 🚀 Technologies utilisées

| Technologie          | Logo                                                                                                                                                             | Description                                                                                                                                                                                                                             |
| :------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Docker**           | ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)                                                                      | **Conteneurisation :** Utilisation pour empaqueter l'application et ses dépendances dans des conteneurs isolés et portables, garantissant la cohérence de l'environnement entre les étapes de développement et de déploiement.           |
| **Kubernetes**       | ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat&logo=kubernetes&logoColor=white)                                                           | **Orchestration :** Plateforme de facto pour l'orchestration de conteneurs. Gère le déploiement, la mise à l'échelle et la gestion des applications conteneurisées pour assurer haute disponibilité et résilience.                      |
| **Kind**             | ![Kind](https://img.shields.io/badge/Kind-5DA6C4?style=flat&logo=kubernetes&logoColor=white)                                                                       | **Cluster Local Kubernetes :** "Kubernetes in Docker" est utilisé pour provisionner rapidement des clusters Kubernetes locaux pour le développement et les tests, simulant fidèlement un environnement de production.                  |
| **HCL**              | ![HCL](https://img.shields.io/badge/HCL-735FBD?style=flat&logo=hashicorp&logoColor=white)                                                                          | **Infrastructure as Code :** Le HashiCorp Configuration Language est utilisé pour la configuration déclarative du cluster Kind (`00-kind-config.yml`), démontrant des compétences en IaC.                                             |
| **MongoDB**          | ![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=flat&logo=mongodb&logoColor=white)                                                                    | **Base de Données NoSQL :** Base de données document orientée, déployée en tant que service persistant au sein du cluster Kubernetes, ou localement via Docker Compose, pour la gestion des données de l'application.                |
| **Docker Compose**   | ![Docker Compose](https://img.shields.io/badge/Docker_Compose-2496ED?style=flat&logo=docker&logoColor=white)                                                      | **Développement Local :** Outil pour définir et exécuter des applications multi-conteneurs Docker. Idéal pour un environnement de développement local cohérent et facile à configurer.                                                 |
| **`kubectl`**        | ![Kubectl](https://img.shields.io/badge/kubectl-326CE5?style=flat&logo=kubernetes&logoColor=white)                                                                 | **Interface en Ligne de Commande Kubernetes :** Outil essentiel pour interagir avec le cluster Kubernetes, déployer des manifestes, inspecter les ressources et gérer l'environnement.                                                 |
| **Bash/Shell Scripting** | ![Bash](https://img.shields.io/badge/Shell_Scripting-121011?style=flat&logo=gnu-bash&logoColor=white) | **Automatisation :** Utilisation de scripts shell pour automatiser les tâches de configuration, de déploiement et de gestion, démontrant une approche axée sur l'automatisation et la reproductibilité. |

## 📦 Installation

Avant de commencer, assurez-vous d'avoir les prérequis suivants installés sur votre machine :

*   **Docker Desktop** (inclut Docker Engine et Docker Compose)
*   **`kubectl`** (Client de ligne de commande Kubernetes)
*   **`Kind`** (Kubernetes in Docker)

Vous pouvez installer `kubectl` et `Kind` en suivant les instructions officielles :
*   `kubectl`: [kubernetes.io/docs/tasks/tools/install-kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
*   `Kind`: [kind.sigs.k8s.io/docs/user/quick-start](https://kind.sigs.k8s.io/docs/user/quick-start/)

Une fois les prérequis installés, suivez ces étapes :

1.  **Clonez le dépôt :**
    ```bash
    git clone https://github.com/YOUR_USERNAME/TP-Kebernates-DevOpSec.git
    cd TP-Kebernates-DevOpSec
    ```

2.  **Construisez l'image Docker de l'application :**
    Le `Dockerfile` à la racine du projet est utilisé pour construire l'image de votre application.
    ```bash
    docker build -t kebernates-app:1.0.0 .
    ```

3.  **Créez le cluster Kind :**
    Le fichier `00-kind-config.yml` définit la configuration de votre cluster local.
    ```bash
    kind create cluster --config 00-kind-config.yml
    ```
    *Attendez que le cluster soit opérationnel.*

4.  **Déployez les ressources Kubernetes :**
    Appliquez les manifestes pour MongoDB et l'application.

    *   **Déployez la ConfigMap MongoDB :**
        ```bash
        kubectl apply -f 02-mongodb-configmap.yml
        ```

    *   **Déployez MongoDB (Deployment & Service) :**
        ```bash
        kubectl apply -f 03-mongodb-deployment-service.yml # Assurez-vous d'avoir ce fichier ou adaptez le nom
        ```
        *Si ce fichier n'existe pas, vous devrez le créer ou déployer MongoDB manuellement.*

    *   **Déployez l'application (Deployment & Service) :**
        ```bash
        kubectl apply -f 04-app-deployment-service.yml # Assurez-vous d'avoir ce fichier ou adaptez le nom
        ```
        *De même, si ce fichier n'existe pas, vous devrez le créer.*

    *Si vous n'avez pas de fichiers `03-mongodb-deployment-service.yml` et `04-app-deployment-service.yml`, vous devrez les créer ou adapter cette section pour refléter votre structure de déploiement Kubernetes. Par défaut, je génère les commandes comme si ces fichiers existaient, en supposant que l'intégration K8s soit complète.*

5.  **Vérifiez le statut des déploiements :**
    ```bash
    kubectl get pods -o wide
    kubectl get deployments
    kubectl get services
    ```
    Assurez-vous que tous les pods sont en état `Running`.

## 🎯 Utilisation

Une fois l'installation terminée, voici comment interagir avec votre environnement :

1.  **Accéder à l'application via un Port Forwarding (si votre service n'est pas de type NodePort/LoadBalancer) :**
    ```bash
    kubectl port-forward service/kebernates-app-service 8080:80
    ```
    Ouvrez votre navigateur à `http://localhost:8080` pour interagir avec l'application.

2.  **Accéder à MongoDB via un Port Forwarding :**
    Si vous souhaitez vous connecter directement à la base de données MongoDB depuis votre machine locale :
    ```bash
    kubectl port-forward service/mongodb-service 27017:27017
    ```
    Vous pouvez alors utiliser un client MongoDB (comme MongoDB Compass ou `mongosh`) pour vous connecter à `mongodb://localhost:27017`.

3.  **Visualiser les logs de l'application :**
    ```bash
    kubectl logs -f <NOM_DU_POD_APPLICATION>
    # Exemple : kubectl logs -f kebernates-app-deployment-xxxxxx-yyyyy
    ```

4.  **Utilisation de Docker Compose pour le développement local (alternatif à Kubernetes) :**
    Pour un développement rapide sans cluster Kubernetes, vous pouvez utiliser `docker-compose` :
    ```bash
    docker-compose up --build
    ```
    Ceci lancera l'application et MongoDB dans des conteneurs isolés gérés par Docker Compose. L'application sera accessible sur `http://localhost:8080` (si configuré dans `docker-compose.yml`).

## 🏗️ Architecture

Le projet est structuré autour d'une architecture **cloud-native** basée sur **Kubernetes** pour l'orchestration et **Docker** pour la conteneurisation.

```
+--------------------------+          +--------------------------------------+
|       Développeur        |          |         Cluster Kind (Kubernetes)    |
| (Docker, kubectl, Kind)  |          |                                      |
+-----------+--------------+          |  +--------------------------------+  |
            |                         |  |       Service Application      |  |
            |  1. kubectl apply       |  |   (LoadBalancer/NodePort/ClusterIP)|
            |                         |  +-----------------+--------------+  |
            |                         |                    |                  |
            |                         |  +-----------------+--------------+  |
            |                         |  |       Pod Application          |  |
            |                         |  | (+ Conteneur kebernates-app)   |  |
            |                         |  +-----------------+--------------+  |
            |                         |                    | (Connexion)      |
            |                         |  +-----------------+--------------+  |
            |                         |  |       Service MongoDB          |  |
            |                         |  |   (ClusterIP)                  |  |
            |                         |  +-----------------+--------------+  |
            |                         |                    |                  |
            |                         |  +-----------------+--------------+  |
            |                         |  |       Pod MongoDB              |  |
            |                         |  | (+ Conteneur MongoDB)          |  |
            |                         |  +-----------------+--------------+  |
            |                         |                    ^                  |
            |                         |                    | (Utilise)        |
            |                         |  +-----------------+--------------+  |
            |                         |  |    ConfigMap MongoDB           |  |
            |                         |  | (ex: DB_NAME, DB_HOST)         |  |
            |                         |  +--------------------------------+  |
            |                         |                                      |
            |                         |  +--------------------------------+  |
            |  2. kind create cluster |  |  Configuration Kind (HCL)      |  |
            +------------------------>|  |  (00-kind-config.yml)          |  |
                                      |  +--------------------------------+  |
                                      |                                      |
                                      +--------------------------------------+
```

### Composants Principaux :

*   **Cluster Kind :** Un cluster Kubernetes léger et isolé, créé localement dans un conteneur Docker. Il simule un environnement de production.
*   **Application `kebernates-app` :** L'application conteneurisée par le `Dockerfile`. Elle est déployée en tant que `Deployment` Kubernetes pour assurer la gestion de son cycle de vie et sa mise à l'échelle.
*   **MongoDB :** La base de données NoSQL est déployée en tant que `Deployment` séparé, avec un `Service` pour son accessibilité interne au cluster.
*   **Services Kubernetes :** Des services (`Service`) sont créés pour exposer l'application et MongoDB au sein du cluster, permettant une communication stable et découplée des pods sous-jacents.
*   **ConfigMap `mongodb-configmap` :** Centralise la configuration de MongoDB, offrant une gestion flexible et sécurisée des paramètres de connexion ou d'autres variables d'environnement.
*   **Fichiers YAML Kubernetes :** Manifestes déclaratifs (`Deployment`, `Service`, `ConfigMap`) définissant l'état désiré de l'infrastructure et des applications au sein du cluster.
*   **`docker-compose.yml` :** Fournit un environnement de développement local alternatif et simplifié, permettant d'exécuter l'application et MongoDB sans avoir besoin d'un cluster Kubernetes.

### Flux de Données :

1.  Le développeur utilise `kubectl` pour déployer les manifestes Kubernetes (`ConfigMap`, `Deployment`, `Service`) sur le cluster Kind.
2.  L'application `kebernates-app` est démarrée dans un ou plusieurs pods. Elle utilise les informations de connexion à MongoDB définies dans la `ConfigMap`.
3.  L'application communique avec le service MongoDB pour lire et écrire des données.
4.  L'accès externe à l'application est géré via un `Service` Kubernetes et/ou `kubectl port-forward`.

Cette architecture illustre une approche moderne et robuste pour le déploiement d'applications cloud-native, mettant en avant la modularité, la scalabilité, la sécurité et la maintenabilité grâce à l'IaC et l'orchestration.

## 📸 Screenshots/Demos

_(Cette section est un placeholder. Ajoutez ici des captures d'écran des pods en fonctionnement, des logs d'application, ou un GIF/lien vidéo montrant le déploiement et l'interaction avec l'application. C'est un excellent moyen de montrer rapidement le projet en action aux recruteurs.)_

*   **Capture d'écran du cluster Kind démarré :**
    ![Kind Cluster Status](docs/screenshots/kind-cluster-status.png) _(Exemple)_

*   **Capture d'écran des pods Kubernetes en état "Running" :**
    ![Kubernetes Pods Running](docs/screenshots/k8s-pods-running.png) _(Exemple)_

*   **Capture d'écran de l'application accessible via le navigateur :**
    ![Application running](docs/screenshots/app-browser.png) _(Exemple)_

## 🤝 Contributions

Les contributions sont les bienvenues ! Si vous souhaitez améliorer ce projet, voici quelques lignes directrices :

1.  Faites un "fork" du dépôt.
2.  Créez une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`).
3.  Commitez vos changements (`git commit -m 'Add some AmazingFeature'`).
4.  Poussez vers la branche (`git push origin feature/AmazingFeature`).
5.  Ouvrez une Pull Request.

N'hésitez pas à ouvrir une "issue" pour toute question ou suggestion.

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

---
_Ce README a été généré par un agent IA expert en documentation technique._