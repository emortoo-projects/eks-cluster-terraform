output "public_subnet_ids" {
  value = aws_subnet.public-subnet[0]
  description = "List of IDs of public subnets"
}
output "ec2-security_group" {
  value = aws_security_group.jump-server-sg
  description = "List of IDs of public subnets"
}