#!/bin/bash

# Accédez au dossier "infra"
cd infra

# Détruisez l'infrastructure
terraform destroy -auto-approve
