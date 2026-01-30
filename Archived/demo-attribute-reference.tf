# provider "aws" {
#     region = "us-east-1"
# }

# resource "aws_security_group" "demo_sg" {
#     name        = "terra_demo_sg"
#     description = "Testing cross resource reference"
# }

# resource "aws_vpc_security_group_egress_rule" "demo_sg_egress" {
#     security_group_id = aws_security_group.demo_sg.id
#     cidr_ipv4         = var.cidr
#     ip_protocol       = "tcp"
#     from_port         = var.port
#     to_port           = var.port
# }

# # resource "aws_eip" "demo_eip" {
# #     domain = "vpc"
# # }

# output "security_group_id" {
#     value = "The group ID is ${aws_security_group.demo_sg.id}"
# }
