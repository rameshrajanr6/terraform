resource "tls_private_key" "AWSB56Key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "AWSB56Key-kp" {
  key_name   = "AWSB56Key-kp"       # Create a "myKey" to AWS!!
  public_key = tls_private_key.AWSB56Key.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.AWSB56Key-kp.key_name}.pem"
  content = tls_private_key.AWSB56Key.private_key_pem
}