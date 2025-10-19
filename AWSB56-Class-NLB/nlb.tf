resource "aws_lb" "AWSB56_NLB" {
  name               = "AWSB56NLB"
  internal           = false
  load_balancer_type = "network"
 subnet_mapping {
      subnet_id = aws_subnet.public-subnet1.id
 }
  
  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}