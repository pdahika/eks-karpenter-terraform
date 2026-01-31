data "aws_vpc" "selected" {
  tags = {
    Name = var.vpc_tag_name
  }
}

data "aws_subnets" "private" {
  tags = {
    Tier = "private"
    Env  = var.environment
  }
}

data "aws_security_group" "office" {
  tags = {
    Name = "OfficeIPs"
  }
}
