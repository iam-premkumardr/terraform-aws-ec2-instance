variable "ami_value" {
  description = "value for the aws ec2 ami"
}

variable "instance_type" {
  description = "value for the aws ec2 instance type"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stg" = "t2.medium"
    "prd" = "t2.xlarge"
  }
}

variable "subnet_id" {
  description = "value for aws ec2 subnet id"
}