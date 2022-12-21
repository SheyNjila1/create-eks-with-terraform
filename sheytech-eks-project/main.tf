# --- root/main.tf ---

module "sheytech-vpc" {
  source           = "../modules/sheytech-vpc"
  vpc_cidr         = "10.0.0.0/16"
  max_subnet       = 2
  public_sn_count  = 2
  public_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
  access_ip        = "0.0.0.0/0"
}

module "sheytech-eks" {
  source         = "../modules/sheytech-eks"
  vpc_id         = module.sheytech-vpc.vpc_id
  key_pair       = "ec2kp-Mac"
  instance_types = ["t2.micro"]
  desired_size   = 2
  min_size       = 1
  max_size       = 5
  public_subnets = module.sheytech-vpc.public_subnets
}