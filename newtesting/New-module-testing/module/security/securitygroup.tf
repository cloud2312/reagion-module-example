resource "aws_security_group" "linux_security_group" {
#  count = var.region_prefix == "use1" ? 1 : 0
  name        = "linux-security-group"
  description = "enable http/https access on port 80/443"
  vpc_id      = aws_vpc.project-vpc_demo.id
  tags = {
    name = "${var.env}-linux"
  }
}

resource "aws_security_group" "win_security_group" {
#  count = var.region_prefix == "use1" ? 1 : 0
  name        = "win-security-group"
  description = "enable http/https access on port 80/443"
  vpc_id      = aws_vpc.project-vpc_demo.id
  tags = {
    name = "${var.env}-Windows"
  }
}
/*
resource "aws_security_group" "linux_apec_security_group" {
#  count = var.region_prefix == "apec" ? 1 : 0
  name        = "linux-apec-security-group"
  description = "enable http/https access on port 80/443"
  vpc_id      = aws_vpc.project-vpc_demo.id
  tags = {
    name = "${var.env}-linux"
  }
}

resource "aws_security_group" "win_apec_security_group" {
#  count = var.region_prefix == "apec" ? 1 : 0
  name        = "win-apec-security-group"
  description = "enable http/https access on port 80/443"
  vpc_id      = aws_vpc.project-vpc_demo.id
  tags = {
    name = "${var.env}-Windows"
  }
}
*/