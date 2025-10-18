resource "aws_instance" "AWSB56-ubuntu-Linux1" {
  ami               = "ami-084568db4383264d4"
  instance_type     = "t2.medium"
  subnet_id = aws_subnet.public_subnet1.id
  availability_zone = aws_subnet.public_subnet1.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]

  tags = {
    Name = "K8s-Control"
  }
}

resource "aws_instance" "AWSB56-ubuntu-Linux2" {
  ami               = "ami-084568db4383264d4"
  instance_type     = "t2.medium"
  subnet_id = aws_subnet.public_subnet1.id
  availability_zone = aws_subnet.public_subnet1.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]

  tags = {
    Name = "K8s-Worker"
  }
}

 
