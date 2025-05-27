# ----------------------------------------------------------------------------- #
# -------------------------------- SG Module ---------------------------------- #
# ----------------------------------------------------------------------------- #


resource "aws_security_group" "ec2_sg" {
  name        = "EC2_SG"
  description = "enable http/https access on port 80/443"
  vpc_id      = var.vpc_id


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allows HTTP access to your app from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "EC2_SG"
    Owner = "Sara_Mousa"
  }
}
