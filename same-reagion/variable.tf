variable "reagion" {}
variable "env" {}
variable "ec2_key_name" {}
variable "instance_type" {
    default = "t2.micro"
    description = "ec2 instance type"
    type = string
}