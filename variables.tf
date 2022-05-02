variable "ec2_ami" {
  type = map

default = {
    us-east-2 = "ami-0c6a6b0e75b2b6ce7"
    us-east-1 = "ami-0f9fc25dd2506cf6d"
  }
}

# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}

#Creating a variable for region
variable "region" {
    type = string
}