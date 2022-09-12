# --- root/main.tf ---

module "vpc" {
  source           = "./vpc"
  vpc_cidr         = "10.0.0.0/16"
  max_subnet       = 2
  public_sn_count  = 2
  public_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
  access_ip        = "0.0.0.0/0"
}

module "eks" {
  source         = "./eks"
  vpc_id         = module.vpc.vpc_id
  key_pair       = "MyKey"
  instance_types = ["t3.small"]
  desired_size   = 2
  min_size       = 1
  max_size       = 5
  public_subnets = module.vpc.public_subnets
}