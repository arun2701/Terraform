variable "port_range" {
    description = "Port range for the security group rule"
    type        = set(number)
    default = [22, 8080, 80]     
}

resource "aws_security_group" "terra_dynamic_sg" {
    name        = "terra-dynamic-sg"
    description = "Security group with dynamic ingress rules"  
}

resource "aws_vpc_security_group_ingress_rule" "inbound_dynamic_rules" {
    security_group_id = aws_security_group.terra_dynamic_sg.id
    cidr_ipv4        = "0.0.0.0/0"
    ip_protocol = "tcp"
    for_each = var.port_range
    from_port = each.value
    to_port   = each.value
}