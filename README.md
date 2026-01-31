# EKS with Karpenter using Terraform

## Features
- ARM64 (Graviton)
- Karpenter autoscaling
- Private subnets only
- Existing VPC & Security Group
- Multi-environment support
- Remote backend

## Prerequisites
- Terraform >= 1.5
- AWS CLI configured
- kubectl
- Helm

## Backend Setup (one-time)
Create:
- S3 bucket
- DynamoDB table for locks

## Deploy
cd environments/dev
terraform init
terraform apply

## Access Cluster
aws eks update-kubeconfig --name dev-eks --region ap-south-1

## Destroy
terraform destroy
