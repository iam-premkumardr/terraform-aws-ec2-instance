#Configure the aws provider

provider "aws" {
region = "ap-southeast-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "my_subnet" {
  vpc_id = aws_vpc.my_vpc
  cidr_block = var.cidr_block_subnet
  availability_zone = var.availability_zone
}