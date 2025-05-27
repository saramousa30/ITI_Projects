# --------------------------------------------------------------- #
# -------------- Main Cofiguration File Variables --------------- #
# --------------------------------------------------------------- #

#------------------------------------------------------------------
# Provider Variables
#------------------------------------------------------------------

variable "region" {
  description = "Region code"
  type        = string
  default     = "us-east-1"
}

#------------------------------------------------------------------
# VPC Module Variables
#------------------------------------------------------------------

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_az" {
  description = "AZ"
  type        = string
}


variable "vpc_public_subnet_cidr" {
  description = "public subnet CIDR range"
  type        = string
}


#------------------------------------------------------------------
# EC2 Module Variables
#------------------------------------------------------------------
variable "instance_type" {
  type        = string
  description = "The size of the EC2 instance"
}

variable "instance_ami" {
  type        = string
  description = "The AMI of the EC2 instance"
}


