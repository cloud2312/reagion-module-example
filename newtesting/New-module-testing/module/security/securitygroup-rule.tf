##################################
# use1 nlb security group rule
##################################
resource "aws_security_group_rule" "sg_linux-ing-01" {
#  count = var.region_prefix == "use1" ? 1 : 0
  type = "ingress"
  description = "ICMP"
  from_port        = 8
  to_port          = -1
  protocol         = "icmp"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.linux_security_group.id
}

# any outbound
resource "aws_security_group_rule" "sg_linux-eg-01" {
# count = var.region_prefix == "use1" ? 1 : 0
  type = "egress"
  description = "any outbound"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.linux_security_group.id
}

##################################
# use1 win security group rule
##################################
resource "aws_security_group_rule" "sg_win-ing-01" {
#  count = var.region_prefix == "use1" ? 1 : 0
  type = "ingress"
  description = "ICMP"
  from_port        = 8
  to_port          = -1
  protocol         = "icmp"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.win_security_group.id
}

# any outbound
resource "aws_security_group_rule" "sg_win-eg-01" {
#  count = var.region_prefix == "use1" ? 1 : 0
  type = "egress"
  description = "any outbound"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.win_security_group.id
}
/*
#########################################################################
# APAC security group rile
#########################################################################

##################################
# apac nlb security group rule
##################################
resource "aws_security_group_rule" "sg_apec_linux-ing-01" {
#  count = var.region_prefix == "apec" ? 1 : 0
  type = "ingress"
  description = "ICMP"
  from_port        = 8
  to_port          = -1
  protocol         = "icmp"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.linux_apec_security_group.id
}

# any outbound
resource "aws_security_group_rule" "sg_apec_linux-eg-01" {
#  count = var.region_prefix == "apec" ? 1 : 0
  type = "egress"
  description = "any outbound"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.linux_apec_security_group.id
}

##################################
#apac  win security group rule
##################################
resource "aws_security_group_rule" "sg_apec_win-ing-01" {
#  count = var.region_prefix == "apec" ? 1 : 0
  type = "ingress"
  description = "ICMP"
  from_port        = 8
  to_port          = -1
  protocol         = "icmp"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.win_apec_security_group.id
}

# any outbound
resource "aws_security_group_rule" "sg_apec_win-eg-01" {
#  count = var.region_prefix == "apec" ? 1 : 0
  type = "egress"
  description = "any outbound"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.win_apec_security_group.id
}
*/