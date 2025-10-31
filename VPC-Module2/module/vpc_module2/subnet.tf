resource "aws_subnet" "LB-subnet1" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1a
  cidr_block = var.LB-subnet1-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "Load Banalcer-subnet1"
  }
}
 
resource "aws_subnet" "LB-subnet2" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1b
  cidr_block = var.LB-subnet2-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "Load Banalcer-subnet2"
  }
}
 
 resource "aws_subnet" "LB-subnet3" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1c
  cidr_block = var.LB-subnet3-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "Load Banalcer-subnet3"
  }
}
 

resource "aws_subnet" "web-subnet1" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1a
  cidr_block = var.webserver-subnet1-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "WebServer-subnet1"
  }
}

resource "aws_subnet" "web-subnet2" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1b
  cidr_block = var.webserver-subnet2-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "WebServer-subnet2"
  }
}

resource "aws_subnet" "web-subnet3" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1c
  cidr_block = var.webserver-subnet3-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "WebServer-subnet3"
  }
}

resource "aws_subnet" "app-subnet1" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1a
  cidr_block = var.appserver-subnet1-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "AppServer-subnet1"
  }
}

resource "aws_subnet" "app-subnet2" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1b
  cidr_block = var.appserver-subnet2-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "AppServer-subnet2"
  }
}

resource "aws_subnet" "app-subnet3" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1c
  cidr_block = var.appserver-subnet3-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "AppServer-subnet3"
  }
} 

resource "aws_subnet" "db-subnet1" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1a
  cidr_block = var.dbserver-subnet1-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "DatabaseServerr-subnet1"
  }
}

resource "aws_subnet" "db-subnet2" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1b
  cidr_block = var.dbserver-subnet2-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "DatabaseServerr-subnet2"
  }
}

resource "aws_subnet" "db-subnet3" {
  vpc_id = aws_vpc.PROD-VPC.id
  availability_zone = var.az-east-1c
  cidr_block = var.dbserver-subnet3-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "DatabaseServerr-subnet3"
  }
} 