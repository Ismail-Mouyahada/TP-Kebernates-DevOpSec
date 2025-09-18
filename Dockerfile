```dockerfile
# Stage de construction
FROM golang:1.20-alpine AS builder

# Définir le répertoire de travail
WORKDIR /app

# Copier uniquement le fichier HCL pour optimiser le cache
COPY go.mod go.sum ./
RUN go mod download

COPY *.hcl ./

# Stage d'exécution
FROM alpine:latest

# Utiliser un utilisateur non-root
RUN addgroup -S terraform && adduser -S terraform -G terraform

# Définir le répertoire de travail
WORKDIR /app

# Copier uniquement les fichiers nécessaires du stage de construction
COPY --from=builder /app/*.hcl ./

# Installer terraform
RUN apk add --no-cache terraform

# Définir l'utilisateur
USER terraform

# Exécuter terraform en tant qu'utilisateur non-root
#  (Adapter la commande selon vos besoins)
CMD ["terraform", "init"] # Remplacer par votre commande terraform

#  Exemple avec un port pour le serveur distant (si nécessaire)
# EXPOSE 8080

#  Pour une meilleure sécurité, éviter d'exposer des ports inutiles en production.
#  Privilégier la communication interne via un réseau sécurisé (Kubernetes, etc.).
```

**Explication des optimisations et bonnes pratiques:**

* **Deux stages:**  La construction est séparée en deux stages. Le premier stage (`builder`) compile le code (bien que dans ce cas, il n'y a pas de compilation car c'est du HCL). Le deuxième stage (`alpine:latest`) utilise une image minimaliste d'Alpine Linux pour l'exécution. Cela réduit considérablement la taille de l'image finale.  La copie des fichiers se fait uniquement depuis le stage `builder`, optimisant ainsi le cache.

* **Image de base optimisée:** `golang:1.20-alpine` est utilisé pour le stage de construction car il inclut `go` et est basé sur Alpine Linux, une distribution Linux légère. Pour le stage d'exécution, `alpine:latest` est utilisé pour sa petite taille.

* **Gestion des dépendances:** `go mod download` télécharge les dépendances Go (même si ce n'est pas nécessaire ici, c'est une bonne pratique à inclure si vous aviez besoin de dépendances Go).  `apk add --no-cache terraform` installe Terraform sans mettre en cache les paquets non nécessaires.

* **Utilisateur non-root:** Un utilisateur `terraform` est créé et utilisé pour l'exécution. Cela limite les dommages potentiels en cas de compromission du conteneur.

* **Optimisation du cache:**  En séparant les étapes et en copiant uniquement les artefacts nécessaires, le Dockerfile optimise le cache.  Les couches qui ne changent pas ne seront pas reconstruites.

* **Sécurité:** L'utilisation d'une image de base minimale, d'un utilisateur non-root, et l'absence d'exposition de ports inutiles améliorent la sécurité.  L'exposition des ports doit être évaluée au cas par cas et évitée si possible en production pour une meilleure sécurité.

* **Commande `CMD`:**  La commande `CMD` est ajustée pour exécuter `terraform init`.  **Remplacez ceci par votre commande Terraform appropriée** (par exemple, `terraform plan`, `terraform apply`, etc.).  Vous pouvez aussi utiliser un script pour plus de complexité.

**Avant de construire et d'exécuter:**

* Assurez-vous d'avoir un fichier `go.mod` et `go.sum` si vous avez des dépendances Go, même si ce n'est pas le cas dans l'exemple.  Ils sont inclus pour une bonne pratique.
* Remplacez `terraform init` par la commande Terraform que vous souhaitez exécuter dans votre conteneur.
* Adaptez l'exposition des ports si nécessaire, mais soyez prudent et évitez d'exposer des ports inutiles en production.


Ce Dockerfile fournit une base solide et sécurisée pour votre projet.  N'oubliez pas d'adapter la commande `CMD` à vos besoins spécifiques.
