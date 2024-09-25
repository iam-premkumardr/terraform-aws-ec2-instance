variable "cidr_block" {
  default = "10.0.0.0/16"
  description = "value for the cidr block"
}

variable "cidr_block_subnet" {
   default = "10.0.1.0/24"
   description = "value for the cidr block s"
}

variable "availability_zone" {
  default = "ap-southeast-2" # Australia East
  description = "value for the availability zone"
}