variable "subnet_ids" {
  description = "IDs of the subnets"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}
