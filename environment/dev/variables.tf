variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "environment" {
  description = "The environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for the EKS nodes"
  type        = string
}

variable "vpc_tag_name" {
  description = "Tag name for the shared VPC"
  type        = string
}
