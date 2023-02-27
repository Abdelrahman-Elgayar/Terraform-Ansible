resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.Lab02-Terraform.id
  route {
    cidr_block = var.security_source
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = var.RT_name[0]
  }
}

resource "aws_route_table_association" "PublicRT-PublicSubnet" {
  subnet_id      = aws_subnet.Subnets[0].id
  route_table_id = aws_route_table.PublicRT.id
}

resource "aws_route_table" "PrivateRT" {
  vpc_id = aws_vpc.Lab02-Terraform.id
  route {
    cidr_block = var.security_source
    gateway_id = aws_nat_gateway.Nat_gw.id
  }

  tags = {
    Name = var.RT_name[1]
  }
}

resource "aws_route_table_association" "PrivateRT-PrivateSubnet" {
  subnet_id      = aws_subnet.Subnets[1].id
  route_table_id = aws_route_table.PrivateRT.id
}