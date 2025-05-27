# Generate an RSA private key
resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create an EC2 Key Pair in AWS with the generated public key for Connecting EC2 via SSH
resource "aws_key_pair" "ec2_Key_pair" {
  key_name   = "EC2_Key_Pair" # Name of the key pair in AWS
  public_key = tls_private_key.private_key.public_key_openssh
}

#save the private key locally
resource "local_file" "ec2_private_key" {
  content         = tls_private_key.private_key.private_key_pem
  filename        = "ec2_private_key.pem"
  file_permission = "0400"
}
