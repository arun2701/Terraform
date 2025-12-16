variable "region_name" {
}
variable "ami_id" {
    default = {
        us-east-1 = "ami-0fa3fe0fa7920f68e"
        us-west-1 = "ami-03978d951b279ec0b"
    }
}
variable "instance_type" {
    default = "t2.micro"
}
variable "cidr_block" {}
variable "port_range_end" {}
variable "port_range_start" {}
variable "protocol" {}