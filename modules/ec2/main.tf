resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  for_each      = toset(var.subnet_ids)
  subnet_id     = var.subnet_ids[each.key]
}