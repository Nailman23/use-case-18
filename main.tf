terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.8.0"
    }
  }

  backend "s3" {
    bucket         = "snowak-terraform-state-backend"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform_state"
    region         = "us-east-1"
    encrypt        = true
  }
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

module "public_subnets" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  subnet_cidr_blocks  = var.public_subnet_cidr_blocks
}

module "private_subnets" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  subnet_cidr_blocks  = var.private_subnet_cidr_blocks
}

module "public_ec2_instances" {
  source           = "./modules/ec2"
  subnet_ids       = module.public_subnets.subnet_ids
  ami_id           = var.ami_id
}

module "private_ec2_instances" {
  source           = "./modules/ec2"
  subnet_ids       = module.private_subnets.subnet_ids
  ami_id           = var.ami_id
}