resource "aws_subnet" "subnet" {
  vpc_id            = var.vpc_id
  for_each          = toset(var.subnet_cidr_blocks)
  cidr_block        = each.key
  availability_zone = "us-east-1a"
  tags = {
    Name = each.key
  }
}
