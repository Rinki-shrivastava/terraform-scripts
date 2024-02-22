# # create vpc
# resource "aws_vpc" "vpc" {
#  cidr_block = "10.0.0.0/16"
 
#  tags = {
#    Name = "Terraform-vpc"
#  }
# }
# # create subnet
# resource "aws_subnet" "subnet" {
#   vpc_id     = aws_vpc.vpc.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "tf-sub-1"
#   }
# }
# resource "aws_subnet" "subnet1" {
#   vpc_id     = aws_vpc.vpc.id
#   cidr_block = "10.0.2.0/24"

#   tags = {
#     Name = "tf-sub-2"
#   }
# }
# # create igw & attach to vpc
# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.vpc.id

#   tags = {
#     Name = "tf-igw"
#   }
# }
# # create route table
# resource "aws_route_table" "route" {
#   vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }
#   tags = {
#     Name = "tf-route-table"
#   }
# }
# # subnet associate to default route table
# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.subnet.id
#   route_table_id = aws_route_table.route.id
# }
