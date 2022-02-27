data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# ubuntu host security group
resource "aws_security_group" "sg_ubuntu_host" {
  depends_on = [
    aws_vpc.vpc,
  ]
  name        = "sg ubuntu host"
  description = "ubuntu host security group"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "allow ICMP"
    from_port   = 0
    to_port     = 0
    protocol    = "ICMP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ubuntu host ec2 instance
resource "aws_instance" "ubuntu_host" {
  depends_on = [
    aws_security_group.sg_ubuntu_host,
  ]
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.sg_ubuntu_host.id]
  subnet_id              = aws_subnet.public_subnet.id
  user_data              = file("my_script.sh")

  tags = {
    Name = "Ubuntu"
  }

  provisioner "file" {
    source      = "C:/Users/ahmad/OneDrive/Desktop/Exadel/Exadel_Internship/Task3-IaC/Terraform/my_key.pem"
    destination = "/home/ubuntu/my_key.pem"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = tls_private_key.private_key.private_key_pem
      host        = aws_instance.ubuntu_host.public_ip
    }
  }
}
