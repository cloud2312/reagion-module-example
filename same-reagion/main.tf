module "use1" {
  source = "./Module/use1"
  providers = {
    aws = aws.use1
  }
#  Genral environment variables
   env = var.env
   reagion = var.reagion 
   ec2_key_name = var.ec2_key_name
   instance_type = var.instance_type
}

module "euw1" {
  source = "./Module/euw1"
  providers = {
    aws = aws.euw1
  }
#  Genral environment variables
   env = var.env
   reagion = var.reagion 
   ec2_key_name = var.ec2_key_name
   instance_type = var.instance_type
}
