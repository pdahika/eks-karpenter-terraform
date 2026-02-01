terraform {
  backend "s3" {
    bucket         = "damini-s3-demo-bucket"
    key            = "eks-karpenter/dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
