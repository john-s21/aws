resource "aws_instance" "Jenkins-Master" {
  ami           = lookup(var.ec2_ami, var.region)
  count         = 3
  instance_type = var.instance_type
  # vpc_security_group_ids = ["sg-a8414ce0"]
  # subnet_id              =          "subnet-4eb39d02"
  key_name   = lookup(var.keyname, var.region)
  monitoring = true
  # user_data              = file("D:/Terraform/pipeline sh/ud.sh")

  tags = {
    Terraform   = "True"
    Environment = "DeV"
    Name        = "Jenkins-Server-${count.index}"
  }
}
