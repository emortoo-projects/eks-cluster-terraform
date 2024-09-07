
variable "instance_type_medium" {
  description = "Type of instance for Amazon ec2"
  type = string
  default = "t2.medium"
}

variable "security_group_name" {
   description = "Name of security group"
  type = string
  default = "jump-server-sg"
}

variable "instance_name" {
  description = "Name of instance"
  type = string
  default = "Jump-Server"
}

variable "key_pair" {
  description = "Amazon ec2 key pair"
  type = string
  default = "my-key-pair"
}

variable "ec2-sg" {
  description = "Jenkins security group"
  # type = string
}

variable "subnet_id" {
}

# variable "iam_instance_profile" {
#   type = string
#   default = "value"
# }

variable "iam-role" {
  description = "Jump-server iam role"
  type = string
  default = "jump-server-iam-role"
}