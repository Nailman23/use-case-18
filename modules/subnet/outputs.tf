output "subnet_ids" {
  description = "IDs of created subnets"
  value = tomap({
    for k, id in aws_subnet.subnet : k => id
  })
}