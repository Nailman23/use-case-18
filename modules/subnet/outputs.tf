output "subnet_ids" {
  description = "IDs of created subnets"
  value       = aws_subnet.subnet[*].id
}