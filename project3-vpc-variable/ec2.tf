resource "aws_instance" "dpt12_ec2_public" {
  ami               = "ami-079db87dc4c10ac91"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.public-subnet.id
  availability_zone = aws_subnet.public-subnet.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.dpt12_kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]

  tags = {
    Name = "DPT12_EC2_public"
  }
}

resource "aws_instance" "dpt12_ec2_private" {
  ami               = "ami-079db87dc4c10ac91"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet.id
  availability_zone = aws_subnet.private-subnet.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.dpt12_kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]

  tags = {
    Name = "DPT12_EC2_private"
  }
}