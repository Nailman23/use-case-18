output "ec2_instance_ids" {
  description = "IDs of the created EC2 instances"
  value = tomap({
    for k, id in aws_instance.ec2_instance : k => id
  })
}
