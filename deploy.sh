#!/bin/bash

# Répertoire de travail actuel
WORK_DIR=$(pwd)

# Déploiement de l'infrastructure Terraform
echo "Déploiement de l'infrastructure Terraform..."

# Accédez au dossier "infra"
cd "$WORK_DIR/infra/"

# Initialisez Terraform (si ce n'est pas déjà fait)
terraform init

# Appliquez les modifications pour créer l'infrastructure
terraform apply -auto-approve

# Revenez au répertoire de travail actuel
cd $WORK_DIR

# Terminé
echo "Déploiement terminé avec succès."
