output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.webserver.id
}

output "instance_id_machine2" {
  description = "ID of the EC2 instance"
  value       = aws_instance.api-server.id
}