# provider "aws" {
#     region  = "us-east-1"
#     profile = "terraform"  
# }

resource "aws_eip" "terra-eip" {
    domain = "vpc"
}