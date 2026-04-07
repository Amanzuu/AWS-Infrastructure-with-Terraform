resource "aws_instance" "my_ec2" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "Terraform-EC2"
  }
}

#Create VPC

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "My-VPC"
  }
}

#Create Public Subnet

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet"
  }
}

#Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "My-IGW"
  }
}

#Route Table

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}

#Associate Route Table

resource "aws_route_table_association" "rt_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}