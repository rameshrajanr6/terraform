output "vpc_id" {
  value = aws_vpc.PROD-VPC.id

}

output "Load-balancer-subnet1-ID" {
  value = aws_subnet.LB-subnet1.id
}

output "Load-balancer-subnet2-ID" {
  value = aws_subnet.LB-subnet2
}
output "Load-balancer-subnet3-ID" {
  value = aws_subnet.LB-subnet3.id
}


output "WebServer-subnet1-ID" {
  value = aws_subnet.web-subnet1.id
}

output "WebServer-subnet2-ID" {
  value = aws_subnet.web-subnet2.id
}
output "WebServer-subnet3-ID" {
  value = aws_subnet.web-subnet3.id
}

output "AppServer-subnet1-ID" {
  value = aws_subnet.app-subnet1.id
}
output "AppServer-subnet2-ID" {
  value = aws_subnet.app-subnet2.id
}
output "AppServer-subnet3-ID" {
  value = aws_subnet.app-subnet3.id
}

output "DatabaseServer-subne1-ID" {
  value = aws_subnet.db-subnet1.id
}
output "DatabaseServer-subne2-ID" {
  value = aws_subnet.db-subnet2.id
}
output "DatabaseServer-subne3-ID" {
  value = aws_subnet.db-subnet3.id
}
output "eip-value" {
  value= aws_eip.PRODVPC-eip.id
}

