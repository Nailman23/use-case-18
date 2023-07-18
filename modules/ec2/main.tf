resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  for_each      = var.subnet_ids
  subnet_id     = each.key
}