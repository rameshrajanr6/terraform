#This project is to create VPC Structure
1)Create dpt04-vpc with CIDR 192.168.0.0/16
2)Create 1 public subnet dpt04_pub_sub1 with CIDR 192.168.1.0/24
3)create 1 private subnet dpt04_prv_sub1 with CIDR 192.168.2.0/24
4)Create public route table dpt04_pub_rt 
5)Create private route table dpt04_prv_rt
6)Assocuate public route table with public subnet
7)Associate private route table with private subnet
8)create internet gateway dpt04_igw
9)create Elastic IP for NAT gatweay
10)Create NAT gateway dpt04_ngw and attach the elastic IP address
11)Edit the public route table and add 0.0.0.0/0 ---> internet gateway
12)Edit the private route table and add 0.0.0.0/0 ---> NAT gateway.