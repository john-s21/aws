resource "aws_instance" "Jenkins-Master" {
  ami                    = "ami-0dd0ccab7e2801812"
  count                  = 2
             instance_type          =      "t2.micro"
  vpc_security_group_ids = ["sg-a8414ce0"]
  subnet_id              =          "subnet-4eb39d02"
  key_name                        = "allpurposekey"
  monitoring             = true
  # user_data              = file("D:/Terraform/pipeline sh/usd.sh")

  tags = {
    Terraform   = "True"
    Environment =          "DEV"
    Name        = "Jenkins-Server"
  }
}
