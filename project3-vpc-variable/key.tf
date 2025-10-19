resource "tls_private_key" "dpt12_pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "dpt12_kp" {
  key_name   = "myKey"       # Create a "myKey" to AWS!!
  public_key = tls_private_key.dpt12_pk.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.dpt12_kp.key_name}.pem"
  content = tls_private_key.dpt12_pk.private_key_pem
}