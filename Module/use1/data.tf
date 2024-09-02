#################################
# VPC data values
#################################
data "aws_vpc" "project-vpc" {
  id = "vpc-0abb79e77c0c720fc"
}

data "aws_subnet" "private_subnet1" {
  id = "subnet-06f09848aff9b0f4b"
}

data "aws_subnet" "private_subnet2" {
  id = "subnet-0e46458bc26d178ef"
}

data "aws_subnet" "project-subnet-public1-us-east-1a" {
  id = "subnet-088f698bf1fc83954"
}

data "aws_subnet" "project-subnet-public2-us-east-1b" {
  id = "subnet-07c08edc6ad30c443"
}


###################################################
# EC2 AMI Data resources
###################################################
# Lookup the AMI ID
data "aws_ami" "linux_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] # Example: Amazon Linux 2 AMI
  }

  owners = ["amazon"]
}
