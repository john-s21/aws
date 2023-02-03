resource "aws_instance" "Jenkins-Master" {
  ami           = ami-06984ea821ac0a879 #lookup(var.ec2_ami, var.region)
  count         = 1
  instance_type = t2.micro #var.instance_type
  vpc_security_group_ids = ["sg-23f2375c0"]
  # subnet_id              =          "subnet-4eb39d02"
  key_name   = "southed.pem" #lookup(var.keyname, var.region)
  #monitoring = true
  #user_data              = file("D:/Terraform/Scripts/ubuntu.sh")

  tags = {
    Terraform   = "True"
    Environment = "DeV"
    Name        = "test_serv" #"SVR01PJTALPHA-A1530-${count.index}"
  }
}
