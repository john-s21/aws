#Maps the region for the instance
variable "ec2_ami" {
  type = map(any)

  default = {
    us-east-2  = "ami-0d5bf08bc8017c83b"
    ap-south-1 = "ami-024c319d5d14b463e"
  }
}

#Maps existing pem key for the instance
variable "keyname" {
  type = map(any)

  default = {
    us-east-2  = "allpurposekey"
    ap-south-1 = "apsouth"
  }
}

# Creates a Variable for instance_type
variable "instance_type" {
  type = string
}

#Creates a variable for region
variable "region" {
  type = string
}

