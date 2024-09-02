#################################
# Linux EC2 insyance
#################################
resource "aws_instance" "ec2_linux_01" {
  ami = data.aws_ami.linux_ami.id
  ebs_optimized = true
  instance_type = var.instance_type
#  private_ip = cidrsubnet(data.aws_subnet.project-subnet-private1-us-east-1a.cidr_block, 4, 1)
  private_ip = cidrhost(data.aws_subnet.private_subnet1.cidr_block, 5)
  vpc_security_group_ids = [aws_security_group.linux_security_group.id]
  subnet_id              = data.aws_subnet.private_subnet1.id
  key_name = "mytest"
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
# Linux EC2 insyance
#################################
resource "aws_instance" "ec2_linux_02" {
  ami = data.aws_ami.linux_ami.id
  ebs_optimized = true
  instance_type = var.instance_type
#  private_ip = cidrsubnet(data.aws_subnet.project-subnet-private2-us-east-1b.cidr_block, 4, 1)
  private_ip = cidrhost(data.aws_subnet.private_subnet2.cidr_block, 5)
  vpc_security_group_ids = [aws_security_group.linux_security_group.id]
  subnet_id              = data.aws_subnet.private_subnet2.id
  key_name = "mytest"
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