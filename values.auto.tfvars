region = ["us-east-1"]
vpc_cidr_block = "10.0.0.0/16"
vpc_name = "Lab02-Terraform"

subnet_cidr_block = ["10.0.0.0/24","10.0.1.0/24"]
availability_zones = ["us-east-1a"]
public_ip = ["true","false"]
subnet_name = ["publicSub","privateSub"]

sg_name = "allow-http-ssh"
sg_description = "Allow http and ssh inbound traffic and all outbound traffic"
security_rules = {
      internal = [80,22,0],
      external = [80,22,0],
      protocol = "tcp"
}

security_source = "0.0.0.0/0"

internet_gateway_name = "IGW"

eip_name = "elastic_ip"

Nat_gw = "Nat_gw"

RT_name = ["PublicRT","PrivateRT"]

ami = "ami-0557a15b87f6559cf" 
instance_type = "t3.micro" 
user_data = "user_data.sh"

instance_name = ["public_instance","private_instance"]
volume_name = ["public_instance","private_instance"]

