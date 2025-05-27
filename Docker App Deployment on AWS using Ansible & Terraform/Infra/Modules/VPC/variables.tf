# --------------------------------------------------------------- #
# --------------------- VPC Module Variables -------------------- #
# --------------------------------------------------------------- #

variable "region" {}

# --------------------------------------------------------------
# Variables for the VPC
# --------------------------------------------------------------

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

# --------------------------------------------------------------
# Variables for public subnet
# --------------------------------------------------------------

variable "vpc_public_subnet_cidr" {
  description = "public subnet CIDR range"
  type        = string
}
