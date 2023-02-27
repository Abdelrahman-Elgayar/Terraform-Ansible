resource "aws_security_group" "allow-http-ssh" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.Lab02-Terraform.id

  # ingress {
  #   from_port        = var.security_rules1.internal
  #   to_port          = var.security_rules1.external
  #   protocol         = var.security_rules1.protocol
  #   cidr_blocks      = [var.security_source]
  # }

  # ingress {
  #   from_port        = var.security_rules2.internal
  #   to_port          = var.security_rules2.external
  #   protocol         = var.security_rules2.protocol
  #   cidr_blocks      = [var.security_source]
  # }

  # egress {
  #   from_port        = var.security_rules3.internal
  #   to_port          = var.security_rules3.external
  #   protocol         = var.security_rules3.protocol
  #   cidr_blocks      = [var.security_source]
  # }

   ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.security_source]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.security_source]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.security_source]
  }

  tags = {
    Name = var.sg_name
  }
}