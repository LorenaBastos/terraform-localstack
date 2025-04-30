resource "aws_vpc" "vpc-dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-dev"
  }
}


## Public Subnets
variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnet_cidrs)
 vpc_id     = aws_vpc.vpc-dev.id
 cidr_block = element(var.public_subnet_cidrs, count.index)
 availability_zone = element(var.azs, count.index)
 tags = {
   Name = "Public Subnet ${count.index + 1}"
 }
}

 
## Private Subnets
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.4.0/24", "10.0.5.0/24"]
}
 
resource "aws_subnet" "private_subnets" {
 count      = length(var.private_subnet_cidrs)
 vpc_id     = aws_vpc.vpc-dev.id
 cidr_block = element(var.private_subnet_cidrs, count.index)
 availability_zone = element(var.azs, count.index)
 
 tags = {
   Name = "Private Subnet ${count.index + 1}"
 }
}


## DEV IGW
resource "aws_internet_gateway" "dev-igw" {
 vpc_id = aws_vpc.vpc-dev.id
 
 tags = {
   Name = "DEV VPC IG"
 }
}

##Route Table - Public Access

resource "aws_route_table" "public-rt" {
 vpc_id = aws_vpc.vpc-dev.id
 
 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.dev-igw.id
 }
 
 tags = {
   Name = "Route Table - Public Access"
 }
}

## Public Access Route Association with Public Subnet
## Since we have three public subnets in our design
## this configuration will create three corresponding associations of subnets 
## and the second route table.

resource "aws_route_table_association" "public_subnet_asso" {
 count = length(var.public_subnet_cidrs)
 subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
 route_table_id = aws_route_table.public-rt.id
}





