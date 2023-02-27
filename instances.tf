resource "aws_instance" "public_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.Subnets[0].id
  vpc_security_group_ids = [aws_security_group.allow-http-ssh.id]

  user_data = "${file(var.user_data)}"

  tags = {
    Name = var.instance_name[0]
  }

  volume_tags = {
    Name = var.volume_name[0]
  } 
}

resource "aws_instance" "private_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.Subnets[1].id
  vpc_security_group_ids = [aws_security_group.allow-http-ssh.id]

  user_data = "${file(var.user_data)}"

  tags = {
    Name = var.instance_name[1]
  }

  volume_tags = {
    Name = var.volume_name[1]
  } 
}