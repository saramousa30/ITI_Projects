# ----------------------------------------------------------------------------- #
# ------------------------------- VPC Module ---------------------------------- #
# ----------------------------------------------------------------------------- #

# ---------------------------------------------------------------------
# Creating a VPC
# ---------------------------------------------------------------------

resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name  = var.vpc_name
    owner = "Sara_Mousa"
  }
}

# ---------------------------------------------------------------------
# Creating an Internet Gateway
# ---------------------------------------------------------------------

# create internet gateway and attach it to vpc
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name  = "IGW"
    Owner = "Sara_Mousa"
  }
}

# ---------------------------------------------------------------------
# Creating public subnet
# ---------------------------------------------------------------------

# Create Public Subnets
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.vpc_public_subnet_cidr
  availability_zone       = var.vpc_az
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_Subnet"
  }
}

# ----------------------------------------------------------------------
# Creating a public route table and associate it with the public subnets
# ----------------------------------------------------------------------

# create route table and add public route
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name  = "Public_RT"
    Owner = "Sara_Mousa"
  }
}

# Associating the public route table with the public subnets.
resource "aws_route_table_association" "public_subnets_RouteTable_Association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

