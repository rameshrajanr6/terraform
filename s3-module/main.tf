resource "random_id" "s3_id" {
  byte_length=2
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket="prod-bucket-${random_id.s3_id.hex}"
  tags = {
    Name= var.s3tag
  }
}