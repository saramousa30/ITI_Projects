# -------------------------------------------------------------- #
# --------------------- VPC Module Outputs --------------------- #
# -------------------------------------------------------------- #

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "public_subnet_id" {
  description = "Public Subnet_ID"
  value       = aws_subnet.public_subnet.id
}

output "public_route_table_id" {
  description = " Public Route Table ID "
  value       = aws_route_table.public_route_table.id
}

