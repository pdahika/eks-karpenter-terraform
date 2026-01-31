variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2" // You can change this default as needed
}

variable "environment" {
  description = "The environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "vpc_tag_name" {
  description = "The Name tag of the VPC to select"
  type        = string
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for the EKS nodes"
  type        = string
}