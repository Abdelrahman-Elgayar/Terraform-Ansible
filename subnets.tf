resource "aws_subnet" "Subnets" {
  vpc_id     = aws_vpc.Lab02-Terraform.id
  count = length(var.subnet_cidr_block)
  cidr_block = var.subnet_cidr_block [count.index]
  availability_zone = var.availability_zones[0]
  map_public_ip_on_launch = var.public_ip [count.index]
  tags = {
    count = length(var.subnet_name)
    Name = var.subnet_name [count.index]
  }
}