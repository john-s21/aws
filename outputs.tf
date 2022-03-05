output "id" {
  description           = "The ID of the instance:"
  value       =       try(aws_instance.Jenkins-Master[*].id)
}

output "ip" {
  description =          "The IP of the instance:"
  value                 = try(aws_instance.Jenkins-Master[*].public_ip)
}