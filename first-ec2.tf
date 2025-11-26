provider "aws" {
    region  = "us-east-1"
    profile = "terraform"
}

resource "aws_instance" "terra-ec2-1" {
    ami           = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    tags = {
        Name = "terra-ec2-1"
    }

}
resource "aws_instance" "terra-ec2-2" {
    ami           = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    tags = {
        Name = "terra-ec2-2"
    }
}