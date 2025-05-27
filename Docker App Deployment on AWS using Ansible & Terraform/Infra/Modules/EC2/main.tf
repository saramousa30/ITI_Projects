# ----------------------------------------------------------------------------- #
# ------------------------------- EC2 Module ---------------------------------- #
# ----------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------
# Creating Instance
# -------------------------------------------------------------------------------
resource "aws_instance" "bastion_instances" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.ec2_sg_id]
  associate_public_ip_address = true

  tags = {
    Name  = "EC2"
    Owner = "Sara_Mousa"
  }
}
