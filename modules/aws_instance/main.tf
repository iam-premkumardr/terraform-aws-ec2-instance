#Configure the aws provider
provider "aws" {
region = "ap-southeast-2"
}

resource "aws_instance" "my_instance" {
  ami = var.ami_value
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}
