# provider "aws" {
#     region = "us-east-1"
#     profile = "terraform"
# }

resource "aws_security_group" "terra_sg" {
    name        = "terra_sg"
    # description = "Security group for terra EC2 instance"
    tags = {
        Name = "terra_sg"
    }
}

# resource "aws_vpc_security_group_ingress_rule" "allow_http" {
#     security_group_id = aws_security_group.terra-sg.id
#     cidr_ipv4        = "0.0.0.0/0"
#     from_port        = 80
#     to_port          = 100
#     ip_protocol     = "tcp"
#     tags = {
#       Name = "Allow_HTTP"
#     }
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all" {
#     security_group_id = aws_security_group.terra-sg.id
#     cidr_ipv4        = "0.0.0.0/0"
#     ip_protocol = "-1"
# }