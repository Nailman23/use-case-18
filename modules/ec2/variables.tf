variable "subnet_ids" {
  description = "IDs of the subnets"
  type        = map(any)
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}
