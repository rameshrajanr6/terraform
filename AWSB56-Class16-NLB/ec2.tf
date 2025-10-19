resource "aws_instance" "AWSB56-public-Linux1" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.public-subnet1.id
  availability_zone = aws_subnet.public-subnet1.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_public1"
         }
}

#resource "aws_instance" "AWSB56-public-Windows" {
#  ami               = "ami-0888db1202897905c"
#  instance_type     = "t2.large"
#  subnet_id = aws_subnet.public-subnet.id
#  availability_zone = aws_subnet.public-subnet.availability_zone
#  associate_public_ip_address = true
# key_name = aws_key_pair.AWSB56Key-kp.key_name


#  // dynamically set Security Group ID (firewall)
#  vpc_security_group_ids = [aws_security_group.dpt12_sg.id]

 # tags = {
 #   Name = "DPT12_EC2_private"
 # }
#}
resource "aws_instance" "AWSB56-private-Linux1" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet1.id
  availability_zone = aws_subnet.private-subnet1.availability_zone
  associate_public_ip_address = true
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_private1"
         }
}

resource "aws_instance" "AWSB56-private-Linux2" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet2.id
  availability_zone = aws_subnet.private-subnet2.availability_zone
  associate_public_ip_address = false
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_private2"
         }
}


resource "aws_instance" "AWSB56-private-Linux3" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet3.id
  availability_zone = aws_subnet.private-subnet3.availability_zone
  associate_public_ip_address = false
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_private3"
         }
}

 
 resource "aws_instance" "AWSB56-private-Linux4" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet3.id
  availability_zone = aws_subnet.private-subnet3.availability_zone
  associate_public_ip_address = false
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_private4"
         }
}

resource "aws_instance" "AWSB56-private-Linux5" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet3.id
  availability_zone = aws_subnet.private-subnet3.availability_zone
  associate_public_ip_address = false
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_private5"
         }
}

resource "aws_instance" "AWSB56-private-Linux6" {
  ami               = "ami-0fff1b9a61dec8a5f"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.private-subnet3.id
  availability_zone = aws_subnet.private-subnet3.availability_zone
  associate_public_ip_address = false
  key_name = aws_key_pair.AWSB56Key-kp.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.AWSB56_sg.id]
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install telnet -y
            sudo yum install tmux -y
            sudo yum install nginx -y
            sudo systemctl nginx start
            sudo systemctl nginx enable
            INSTANCE_iD=$(curl http://168.254.169.254/latest/meta-data/instance-id)
            private_ip_ip=$(curl(http://168.254.169.254/latest/meta-data/private-ipv4)
            echo "<h1>Instance ID: $INSTANCE_ID/<h1>" > /usr/share/nginx/html/index.html/index
            echo "<h1>Private Ip: $private_ip/<h1>" > /usr/share/nginx/html/index.html/index
    EOF

  tags = {
    Name = "AWSB56-EC2_private6"
         }
}