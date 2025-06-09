module "vpc" {
  source = "../terraform-vpc/modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source = "../terraform-vpc/modules/sg"
  vpc_id = module.vpc.vpc_id
}