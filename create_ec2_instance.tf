#Terraform version
terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~> 5.0"
    }
  }
}

#Configure the aws provider
provider "aws" {
region = "ap-southeast-2"
}

#Call the module to create ec2 instance
module "ec2_instance" {
  source = "./modules/aws_instance"
  ami_value = "ami-0474411b350de35fb"  #change this value 
  instance_type = "t2.micro" #change this value
  subnet_id = "subnet-0a96e897cf3b15655"  #change this value
}

#Output the value required
output "public_ip" {
  value = module.ec2_instance.public-ip-address
  description = "Public IP Address"
}