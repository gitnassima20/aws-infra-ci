module "vpc" {
  source = "../terraform-vpc/modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source = "../terraform-vpc/modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "../terraform-vpc/modules/ec2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
}

