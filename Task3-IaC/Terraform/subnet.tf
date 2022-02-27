# public subnet
resource "aws_subnet" "public_subnet" {
  depends_on = [aws_vpc.vpc]

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "public-subnet-terraform"
  }

  map_public_ip_on_launch = true
}

# private subnet
resource "aws_subnet" "private_subnet" {
  depends_on = [aws_vpc.vpc]

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "private-subnet-terraform"
  }
}
