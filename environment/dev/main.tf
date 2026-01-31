variable "environment" {
  description = "The environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for the EKS nodes"
  type        = string
}

module "eks" {
  source = "../../modules/eks"

  cluster_name       = "dev-eks"
  environment        = var.environment
  vpc_id             = data.aws_vpc.selected.id
  private_subnet_ids = data.aws_subnets.private.ids
  office_sg_id       = data.aws_security_group.office.id
  ssh_key_name       = var.ssh_key_name
}

module "karpenter" {
  source = "../../modules/karpenter"

  cluster_name     = module.eks.cluster_name
  cluster_endpoint = module.eks.cluster_endpoint
  oidc_provider_arn = module.eks.oidc_provider_arn
}
