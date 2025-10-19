provider "aws" {    
    region = "us-east-1"
  }

  resource "aws_vpc" "dpt11-vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "dpt11-vpc"
    }
  }

   resource "aws_vpc" "dpt12-vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "dpt12-vpc"
    }
  }