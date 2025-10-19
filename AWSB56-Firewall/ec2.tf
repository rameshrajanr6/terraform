data "aws_ami" "amzn_linux_2023_latest" {
    most_recent = true
    owners = [ "amazon" ]

    filter {
      name = "name"
      values = [ "al2023-ami-2023*" ]
    }

    filter {
      name = "architecture"
      values = [ "x86_64" ]
    }

    filter {
      name = "root-device-type"
      values = [ "ebs" ]
    }

    filter {
      name = "virtualization-type"
      values = [ "hvm" ]
    }
}



resource "aws_instance" "AWSB56-ublic-Linux" {
  ami               = data.aws_ami.amzn_linux_2023_latest.id
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.firewall-subnet.id
  availability_zone = aws_subnet.firewall-subnet.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]
    user_data = <<-EOF
            #!/bin/bash
            yum update -y
            yum install telnet -y
            yum install tmux -y
            yum install nginx -y 
            systemctl nginx start
            systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
               EOF

  tags = {
    Name = "DPT12_EC2_public"
  }
}

resource "aws_instance" "AWSB56-ublic-Windows" {
  ami               = "ami-0324a83b82023f0b3"
  instance_type     = "t2.large"
  subnet_id = aws_subnet.private-subnet.id
  availability_zone = aws_subnet.private-subnet.availability_zone
  associate_public_ip_address = false
  key_name = aws_key_pair.AWSB56Key-kp.key_name


  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]
 
  tags = {
    Name = "DPT12_EC2_private"
  }
}