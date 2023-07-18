output "subnet_ids" {
  description = "IDs of created subnets"
  #value       = values(aws_subnet.subnet[*]).id
  value = tomap({
    for k, id in aws_subnet.subnet : k => id
  })
}