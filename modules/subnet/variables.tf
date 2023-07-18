variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
}

variable "map_public_ip" {
  description = "Whetever instances should have Public IP mapped"
  type        = bool
}