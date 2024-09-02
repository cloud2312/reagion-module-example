/*
#################################
# VPC data values
#################################
data "aws_vpc" "project-vpc" {
  id = "vpc-08d29f8d9bbc759e4"
}

data "aws_subnet" "private_subnet1" {
  id = "subnet-05c54b903336b2ac0"
}

data "aws_subnet" "private_subnet2" {
  id = "subnet-0680ef31ad2697c94"
}

data "aws_subnet" "project-subnet-public1-us-east-1a" {
  id = "subnet-05e762e391dd8e5d6"
}

data "aws_subnet" "project-subnet-public2-us-east-1b" {
  id = "subnet-0416c61abb3bc1363"
}
*/

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

# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}
