resource "aws_security_group" "allow-ssh" {
  name        = "allow_ssh"
  description = "Allow ssh_sg"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "allow_ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}