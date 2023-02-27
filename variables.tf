variable "region" {
  type = list(string)
}

variable "vpc_cidr_block" {
  #type = string
}

variable "vpc_name" {
  #type = string
}

variable "subnet_cidr_block" {
  type = list(string)
}

variable "availability_zones" {
  type    = list(string)
}

variable "public_ip" {
  type    = list(bool)
}

variable "subnet_name" {
  type    = list(string)
}

variable "sg_name" {
  #type = string
}

variable "sg_description" {
  #type = string
}


# variable "security_rules1" {
#   type = list(object({
#     internal = number
#     external = number
#     protocol = string
#   }))
# }

# variable "security_rules2" {
#   type = list(object({
#     internal = number
#     external = number
#     protocol = string
#   }))
# }

# variable "security_rules3" {
#  type = list(object({
#     internal = number
#     external = number
#     protocol = string
#   }))
# }

variable "security_source" {
  type    = string
}

variable "internet_gateway_name" {
  #type = string
}

variable "eip_name" {
  #type    = string
}

variable "Nat_gw" {
  #type    = string
}

variable "RT_name" {
  type    = list(string)
}

variable "ami" {
  #type    = string
}

variable "instance_type" {
  #type    = string
}

variable "user_data" {
  #type    = string
}

variable "instance_name" {
  type    = list(string)
}

variable "volume_name" {
  type    = list(string)
}