module "security_use1" {
  source = "./module/security"
  providers = {
    aws = aws.use1
  }
  # General environment variables
  env = var.env
  region_prefix = "use1"
  ami_id = "ami-0ebfd941bbafe70c6"  # Pass use1_ami_id here
  region = "us-east-1"
  ec2_key_name = "mytest"
  instance_type = var.instance_type
  vpc_cidr_block = var.vpc_cidr_block
  project_name = var.project_name
  private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
}

module "security_apec1" {
  source = "./module/security"
  providers = {
    aws = aws.apec1
  }
  # General environment variables
  env = var.env
  region_prefix = "apec"
  ami_id = "ami-08718895af4dfa033"  # Pass apec1_ami_id here
  region = "ap-south-1"
  ec2_key_name = var.ec2_key_name
  instance_type = var.instance_type
  vpc_cidr_block = var.vpc_cidr_block
  project_name = var.project_name
  private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
}

