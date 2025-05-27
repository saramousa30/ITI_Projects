# -------------------------------------------------------------- #
# -------------------- EC2 Module Variables -------------------- #
# -------------------------------------------------------------- #

# --------------------------------------------------------------
# Variables for the instance itself
# --------------------------------------------------------------

variable "instance_type" {
  type        = string
  description = "The size of the EC2 instance"
}

variable "instance_ami" {
  type        = string
  description = "The AMI of the EC2 instance"
}

variable "public_subnet_id" {
  description = "List of public subnet IDs"
  type        = string
}

variable "key_name" {
  type        = string
  description = "A key pair to access the EC2"
}


# --------------------------------------------------------------
# Variables for the security group
# --------------------------------------------------------------

variable "ec2_sg_id" {
  type        = string
  description = "The ID of the security group that will be attached to the instance"
}

