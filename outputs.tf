output "id" {
  description = "The ID of the instance:"
  value       = try(aws_instance.TESTSERV001[*].id)
}

output "ip" {
  description = "The IP of the instance:"
  value       = try(aws_instance.TESTSERV001[*].public_ip)
}
