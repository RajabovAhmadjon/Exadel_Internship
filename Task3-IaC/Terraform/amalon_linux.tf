data "aws_ami" "amazon" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# amazon linux security group
resource "aws_security_group" "sg_amazon_linux" {
  depends_on = [
    aws_vpc.vpc,
  ]
  name        = "sg amazon linux"
  description = "allow amazon linux inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description     = "allow HTTP"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ubuntu_host.id]
  }

  egress {
    description     = "allow HTTP"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ubuntu_host.id]
  }

  ingress {
    description     = "allow HTTPS"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ubuntu_host.id]
  }

  egress {
    description     = "allow HTTPS"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ubuntu_host.id]
  }

  ingress {
    description     = "allow SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ubuntu_host.id]
  }

  egress {
    description     = "allow SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.sg_ubuntu_host.id]
  }

  ingress {
    description = "allow ICMP"
    from_port   = 0
    to_port     = 0
    protocol    = "ICMP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "allow ICMP"
    from_port   = 0
    to_port     = 0
    protocol    = "ICMP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# amazon linux ec2 instance
resource "aws_instance" "amazon_linux" {
  depends_on = [
    aws_security_group.sg_amazon_linux,
    aws_nat_gateway.nat_gateway,
    aws_route_table_association.associate_routetable_to_private_subnet,
  ]
  ami                    = data.aws_ami.amazon.id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.sg_amazon_linux.id]
  subnet_id              = aws_subnet.private_subnet.id

  tags = {
    Name = "Amazon Linux 2"
  }
}
