output "public_instance_ip_addr" {
  value = aws_instance.public_instance.public_ip
}

output "public_instance_arn" {
  value = aws_instance.public_instance.arn
}

output "private_instance_ip_addr" {
  value = aws_instance.private_instance.private_ip
}