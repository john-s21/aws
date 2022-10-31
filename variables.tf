variable "ec2_ami" {
  type = map(any)

  default = {
    us-east-2  = "ami-0c6a6b0e75b2b6ce7"
    ap-south-1 = "ami-0a3277ffce9146b74"
  }
}

variable "keyname" {
  type = map(any)

  default = {
    us-east-2  = "allpurposekey"
    ap-south-1 = "apsouth"
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
