provider "aws" {
  region = "us-east-1"
}

# resource "aws_instance" "terra_demo_data" {
#     ami           = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 AMI
#     instance_type = "t2.micro"
#     tags = {
#         Name = "terra-ec2-1"
#     }
# }

# data "aws_instances" "test" {
#     region = "us-east-1"
# }

data "aws_ami" "amazon_linux2" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# output "ami"{
#   value = data.aws_ami.amazon_linux2.id
# }