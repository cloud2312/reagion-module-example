##################################
# nlb security group rule
##################################
resource "aws_security_group_rule" "sg_linux-ing-01" {
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
  type = "egress"
  description = "any outbound"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.linux_security_group.id
}

##################################
# win security group rule
##################################
resource "aws_security_group_rule" "sg_win-ing-01" {
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
  type = "egress"
  description = "any outbound"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  security_group_id = aws_security_group.win_security_group.id
}