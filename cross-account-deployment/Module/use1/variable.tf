variable "region" {}
variable "env" {}
variable "ec2_key_name" {}    # keyname must be present on destination reagion or account
variable "instance_type" {}
variable "vpc_cidr_block"  {}
variable "project_name" {}
variable "private_app_subnet_az1_cidr" {}
variable "private_app_subnet_az2_cidr" {}
