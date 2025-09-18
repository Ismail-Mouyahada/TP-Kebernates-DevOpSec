```dockerfile
# Stage 1: Build the application
FROM golang:1.20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy only the necessary files for the build stage
COPY go.mod go.sum ./
RUN go mod download

COPY . .

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .


# Stage 2: Create a minimal runtime image
FROM alpine:latest

# Create a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set working directory
WORKDIR /app

# Copy only the built binary from the builder stage
COPY --from=builder /app/main .

# Set ownership of the binary to the non-root user
RUN chown appuser:appgroup main

# Switch to the non-root user
USER appuser

# Expose necessary ports (if any, adjust as needed).  HCL usually doesn't require exposed ports.
# EXPOSE 8080

# Set entrypoint to run the application
ENTRYPOINT ["/app/main"]

# Healthcheck (Optional, adapt as needed)
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost:8080 || exit 1

# Use a slimmer image for production.  Alpine is a good choice.
# Consider using a multi-stage build to reduce image size.  This example already does that.

# Security best practices:
# * Using a minimal base image (alpine)
# * Non-root user
# * Multi-stage build to minimize the final image size and remove unnecessary build tools.
# * Explicitly setting the entrypoint
# * Healthcheck to monitor the application's health.

# Note: Replace :8080 with the actual port if your HCL application uses one.  Most HCL tools are command-line and don't directly use ports.  If this is for Terraform, consider using a separate container for the Terraform execution and just using this to provide the HCL files.
```

**Explication des choix:**

* **Multi-stage build:**  Sépare la phase de construction (avec `golang:1.20-alpine`) de la phase d'exécution (avec `alpine:latest`). Cela réduit considérablement la taille de l'image finale en supprimant les outils de compilation Go inutiles en production.
* **Image de base minimale:** `alpine:latest` est une image légère et efficace.
* **Utilisateur non-root:** Améliore la sécurité en limitant les privilèges de l'application.
* **Copie optimisée:**  Les fichiers sont copiés de manière stratégique pour optimiser le cache de Docker.
* **`CGO_ENABLED=0`:** Désactive cgo pour réduire la taille de l'image et améliorer la sécurité.
* **`GOOS=linux`:** Spécifie que l'on compile pour Linux.
* **`-a` et `-installsuffix cgo`:**  Options de compilation Go pour optimiser l'image.
* **`HEALTHCHECK`:**  Permet aux orchestrateurs de conteneurs (comme Kubernetes) de surveiller la santé de l'application.  Adaptez l'URL à vos besoins.
* **Commentaires explicites:**  Rend le Dockerfile plus facile à comprendre et à maintenir.

**Avant d'utiliser ce Dockerfile:**

* **Remplacez `8080` par le port approprié** si votre application HCL utilise un port.  Si c'est pour Terraform, vous n'aurez probablement pas besoin d'exposer de port.
* **Assurez-vous que votre application HCL est correctement configurée** pour fonctionner dans l'environnement du conteneur.
* **Testez le Dockerfile**  thoroughment avant de le déployer en production.


Ce Dockerfile fournit une base solide pour déployer votre application HCL en production.  N'oubliez pas d'adapter les instructions en fonction des besoins spécifiques de votre projet.
