output "instance_id" {
  description = "Identifier assigned to the instance by AWS"
  value       = aws_instance.lab_vm.id
}

output "public_ip" {
  description = "Public IPv4 address of the instance"
  value       = aws_instance.lab_vm.public_ip
}

output "availability_zone" {
  description = "Availability zone chosen by AWS"
  value       = aws_instance.lab_vm.availability_zone
}