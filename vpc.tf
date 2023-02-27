resource "aws_vpc" "Lab02-Terraform" {
  cidr_block   = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}