resource "aws_security_group" "dpt12_sg" {
    name        = "dpt06-sg"
    description = "dpt06-sg"
    vpc_id = aws_vpc.dpt12-vpc.id
    tags = {
      Name = "DPT12-SG"
    }
    
  }

resource "aws_security_group_rule" "dpt12_sg_rule1" {
  description       = "Allow inbound SSH access"
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] // allow access from all IPs
  security_group_id = aws_security_group.dpt12_sg.id
}
resource "aws_security_group_rule" "dpt12_sg_rule2" {
  description       = "Allow inbound HTTP access"
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] // allow access from all IPs
  security_group_id = aws_security_group.dpt12_sg.id
}

resource "aws_security_group_rule" "dpt12_sg_rule3" {
  description       = "Allow inbound HTTPs access"
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] // allow access from all IPs
  security_group_id = aws_security_group.dpt12_sg.id
}
resource "aws_security_group_rule" "dpt12_sg_rule4" {
  description       = "Allow inbound RDP access"
  type              = "ingress"
  from_port         = 3389
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] // allow access from all IPs
  security_group_id = aws_security_group.dpt12_sg.id
}

resource "aws_security_group_rule" "dpt12_sg_rule5" {
  description       = "Allow inbounoutboubd all access"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"] // allow access from all IPs
  security_group_id = aws_security_group.dpt12_sg.id
}

resource "aws_security_group_rule" "dpt12_sg_rule6" {
  description       = "Allow inbound ICMP access"
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"] // allow access from all IPs
  security_group_id = aws_security_group.dpt12_sg.id
}