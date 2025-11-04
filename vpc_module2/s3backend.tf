terraform {
  backend "s3" {
    bucket = var.bucketname
    key    = "prodvpcconfig/prodvpckey"
    region = "us-east-1"
  }
}
