provider "aws" {
    region = var.region_name
}
locals {
    common_tags = {
        source="terraform"
        creation_date = formatdate("DD-MM-YYYY", timestamp())
    }
}

variable "common_tags" {
    default = {
        source="terraform"
        #creation_date = formatdate("DD-MM-YYYY", timestamp())
    }
}
resource "aws_instance" "terra_ec2" {
    ami           = var.ami_id[var.region_name]
    instance_type = var.instance_type
    security_groups = [aws_security_group.terra_sg.name]
    tags = {
        Name = "terra-ec2-instance_${count.index}"        
    }
    count = 2
  
}

resource "aws_security_group" "terra_sg" {
    name = "terra_sg"
    description = "Security group created using terraform"
    tags = local.common_tags
  
}

resource "aws_vpc_security_group_ingress_rule" "Allow_SSH" {
    security_group_id = aws_security_group.terra_sg.id
    cidr_ipv4        = var.cidr_block
    from_port        = var.port_range_start   
    to_port          = var.port_range_end
    ip_protocol     = var.protocol
    tags = var.common_tags
}