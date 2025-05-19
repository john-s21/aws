resource "aws_instance" "TESTSERV001" {
  ami           = ami-0e35ddab05955cf57 #lookup(var.ec2_ami, var.region)
  count         = 1
  instance_type = t2.micro #var.instance_type
  vpc_security_group_ids = ["sg-09a9a62ed86a291d3"]
  # subnet_id              =          "subnet-4eb39d02"
  key_name   = "tempap.pem" #lookup(var.keyname, var.region)
  #monitoring = true
  #user_data              = file("D:/Terraform/Scripts/ubuntu.sh")

  tags = {
    Terraform   = "True"
    Environment = "Test"
    Name        = "test_serv" #"SVR01PJTALPHA-A1530-${count.index}"
  }
}
