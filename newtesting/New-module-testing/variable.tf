# variable "region" {}
#variable "region_prefix" {}
#variable "ami_id" {}
#variable "apec1_ami_id" {}
#variable "ami_id" {}
# variable "ami" {}
# variable "euw1_region" {}
# variable "aps1_region" {}
variable "env" {}
variable "ec2_key_name" {}
variable "instance_type" {
    default = "t2.micro"
    description = "ec2 instance type"
    type = string
}
variable "vpc_cidr_block"  {}
variable "project_name" {}
variable "private_app_subnet_az1_cidr" {}
variable "private_app_subnet_az2_cidr" {}