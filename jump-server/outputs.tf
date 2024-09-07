
output "ec2_instance_public_ip" {
  description = "The public IP address assigned to the instance."
  value       = aws_instance.ec2-instance.public_ip
}

output "ec2_instance_private_ip" {
  description = "The public IP address assigned to the instance."
  value       = aws_instance.ec2-instance.private_ip
}

output "ec2_instance_id" {
  description = "The public IP address assigned to the instance."
  value       = aws_instance.ec2-instance.id
}
