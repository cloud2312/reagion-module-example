
module "use1" {
  source = "./Module/use1"
  providers = {
    aws = aws.use1
  }
#  Genral environment variables
   env = var.env
   region = var.use1_region 
   ec2_key_name = var.ec2_key_name
   instance_type = var.instance_type

  vpc_cidr_block  = var.vpc_cidr_block
   project_name  =   var.project_name
   private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
   private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr

}

module "euw1" {
  source = "./Module/euw1"
  providers = {
    aws = aws.euw1
  }
#  Genral environment variables
   env = var.env
   region = var.euw1_region 
   ec2_key_name = var.ec2_key_name
   instance_type = var.instance_type
   
   vpc_cidr_block  = var.vpc_cidr_block
   project_name  =   var.project_name
   private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
   private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
}

module "aps1" {
  source = "./Module/aps1"
  providers = {
    aws = aws.aps1
  }
#  Genral environment variables
   env = var.env
   region = var.aps1_region 
   ec2_key_name = var.ec2_key_name
   instance_type = var.instance_type
   
   vpc_cidr_block  = var.vpc_cidr_block
   project_name  =   var.project_name
   private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
   private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
}
