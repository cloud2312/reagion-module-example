###############################
# Linux security group
##############################
resource "aws_security_group" "linux_security_group" {
  name        = "linux security group"
  description = "enable http/https access on port 80/443"
  vpc_id      = data.aws_vpc.project-vpc.id
  tags = {
    name = "${var.env}-linux"
  }
}

######################################
#   Windows security group
#######################################
resource "aws_security_group" "win_security_group" {
  name        = "win security group"
  description = "enable http/https access on port 80/443"
  vpc_id      = data.aws_vpc.project-vpc.id
  tags = {
    name = "${var.env}-Windows"
  }
}

