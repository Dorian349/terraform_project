#!/bin/bash

# Répertoire de travail actuel
WORK_DIR=$(pwd)

# Accédez au dossier "infra"
cd "$WORK_DIR/infra/"

# Détruire l'infrastructure
terraform destroy -auto-approve

# Revenez au répertoire de travail actuel
cd $WORK_DIR

# Terminé
echo "Destruction terminée avec succès."
