
## VPC
module "VPC" {
  source                 = "./Modules/VPC"
  region                 = var.region
  vpc_name               = var.vpc_name
  vpc_cidr               = var.vpc_cidr
  vpc_az                 = var.vpc_az
  vpc_public_subnet_cidr = var.vpc_public_subnet_cidr
}

## Security Group
module "Secrity_Group" {
  source = "./Modules/Security_Group"
  vpc_id = module.VPC.vpc_id
}

## KeyPair
module "Key_Pair" {
  source = "./Modules/Key_Pair"
}

## EC2
module "EC2" {
  source           = "./Modules/EC2"
  instance_type    = var.instance_type
  instance_ami     = var.instance_ami
  key_name         = module.Key_Pair.key_name
  public_subnet_id = module.VPC.public_subnet_id
  ec2_sg_id        = module.Secrity_Group.ec2_sg_id
}
