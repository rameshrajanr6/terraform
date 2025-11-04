provider "aws" {
    region = var.vpc-region
    
}

terraform {
 backend "s3" {
   bucket = "prod-bucket-95e8"
    key    = "prodvpcconfig/prodvpckey"
    region = "us-east-1"
  }
}
