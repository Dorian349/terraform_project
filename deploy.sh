#!/bin/bash

# Accédez au dossier "infra"
cd infra

# Initialisez Terraform
terraform init

# Appliquez les modifications pour créer l'infrastructure
terraform apply -auto-approve
