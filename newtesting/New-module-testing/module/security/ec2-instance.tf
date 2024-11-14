
#################################
# use1 Linux EC2 insyance
#################################
resource "aws_instance" "ec2_linux_01" {
#  count = var.region_prefix == "use1" ? 1 : 0
  ami = var.ami_id
  ebs_optimized = true
  instance_type = var.instance_type
#  private_ip = cidrsubnet(aws_subnet.private_app_subnet_az1.cidr_block, 4, 1)
  private_ip = cidrhost(aws_subnet.private_app_subnet_az1.cidr_block, 5)
  vpc_security_group_ids = [aws_security_group.linux_security_group.id]
#  subnet_id              = data.aws_subnet.private_subnet1.id
  subnet_id              =  aws_subnet.private_app_subnet_az1.id
  key_name               = var.ec2_key_name
  user_data = "#!/bin/bash \n hostnamectl set-hostname test-instance \n reboot \n"
  metadata_options {
    http_endpoint = "enabled"
    http_put_response_hop_limit = 2
    http_tokens = "required"
  }
  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    encrypted = true
    tags = {
      Name = "ec2_linux_01_vol"
    }
  }
  lifecycle {
    ignore_changes = [user_data]
  }  
}
#################################################

#################################
# Use1  Linux EC2 instance
#################################
resource "aws_instance" "ec2_linux_02" {
#  count = var.region_prefix == "use1" ? 1 : 0
  ami = var.ami_id
  ebs_optimized = true
  instance_type = var.instance_type
#  private_ip = cidrsubnet(aws_subnet.private_app_subnet_az2.cidr_block, 4, 2)
  private_ip = cidrhost(aws_subnet.private_app_subnet_az2.cidr_block, 5)
  vpc_security_group_ids = [aws_security_group.linux_security_group.id]
#  subnet_id              = data.aws_subnet.private_subnet2.id
  subnet_id              = aws_subnet.private_app_subnet_az2.id
  key_name               = var.ec2_key_name
  user_data = "#!/bin/bash \n hostnamectl set-hostname test-instance2 \n reboot \n"
  metadata_options {
    http_endpoint = "enabled"
    http_put_response_hop_limit = 2
    http_tokens = "required"
  }
  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    encrypted = true
    tags = {
      Name = "ec2_linux_02_vol"
    }
  }
  lifecycle {
    ignore_changes = [user_data]
  }  
}
/*
#################################################################
# APEC reagion EC2 Instance
#################################################################
resource "aws_instance" "ec2_linux_03" {
  count = var.region_prefix == "apec" ? 1 : 0
  ami = "ami-08718895af4dfa033"
  ebs_optimized = true
  instance_type = var.instance_type
#  private_ip = cidrsubnet(aws_subnet.private_app_subnet_az1.cidr_block, 4, 1)
  private_ip = cidrhost(aws_subnet.private_app_subnet_az1.cidr_block, 5)
  vpc_security_group_ids = [aws_security_group.linux_security_group[count.index].id]
#  subnet_id              = data.aws_subnet.private_subnet1.id
  subnet_id              =  aws_subnet.private_app_subnet_az1.id
  key_name               = var.ec2_key_name
  user_data = "#!/bin/bash \n hostnamectl set-hostname test-instance \n reboot \n"
  metadata_options {
    http_endpoint = "enabled"
    http_put_response_hop_limit = 2
    http_tokens = "required"
  }
  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    encrypted = true
    tags = {
      Name = "ec2_linux_01_vol"
    }
  }
  lifecycle {
    ignore_changes = [user_data]
  }  
}
*/
/*
##################################################
# APEC region EC2 Instance
resource "aws_instance" "ec2_linux_03" {
#  count = var.region_prefix == "apec" ? 1 : 0
  ami = "ami-08718895af4dfa033"
  ebs_optimized = true
  instance_type = var.instance_type
  private_ip = cidrhost(aws_subnet.private_app_subnet_az1.cidr_block, 5)

  # Conditional reference for security groups
  vpc_security_group_ids = var.region_prefix == "apec" ? [aws_security_group.linux_apec_security_group[0].id] : [aws_security_group.linux_security_group[0].id]

  subnet_id = aws_subnet.private_app_subnet_az1.id
  key_name = var.ec2_key_name
  user_data = "#!/bin/bash \n hostnamectl set-hostname test-instance \n reboot \n"

  metadata_options {
    http_endpoint = "enabled"
    http_put_response_hop_limit = 2
    http_tokens = "required"
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    encrypted = true
    tags = {
      Name = "ec2_linux_03_vol"
    }
  }

  lifecycle {
    ignore_changes = [user_data]
  }
}
*/
