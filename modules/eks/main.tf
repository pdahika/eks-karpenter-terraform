module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_irsa = true

  eks_managed_node_groups = {
    bootstrap = {
      ami_type       = "AL2_ARM_64"
      instance_types = ["t4g.medium"]

      min_size     = 1
      max_size     = 2
      desired_size = 1

      key_name = var.ssh_key_name

      additional_security_group_ids = [
        var.office_sg_id
      ]
    }
  }

  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}
