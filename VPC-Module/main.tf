provider "aws" {
  region = "us-east-1"
}

module "vpc_module1" {
  source               = "./module/vpc_module"
  extra_tags ={
    Environment = "Prod"
  }
  vpc_name             = "Production"
  vpc1-cidr-block      = "192.168.0.0/16"
  public-subnet1-cidr  = "192.168.10.0/24"
  public-subnet2-cidr  = "192.168.20.0/24"
  public-subnet3-cidr  = "192.168.30.0/24"
  private-subnet1-cidr = "192.168.40.0/24"
  private-subnet2-cidr = "192.168.50.0/24"
  private-subnet3-cidr = "192.168.60.0/24"
  vpc-region           = "us-east-1"
  public-subnet1-az    = "us-east-1a"
  public-subnet2-az    = "us-east-1b"
  public-subnet3-az    = "us-east-1c"
  private-subnet1-az   = "us-east-1a"
  private-subnet2-az   = "us-east-1b"
  private-subnet3-az   = "us-east-1c"
  }


