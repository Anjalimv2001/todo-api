provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "todo_api_sg" {
  name        = "todo-api-terraform-sg"
  description = "Allow SSH, HTTP, and app port"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "App port"
    from_port   = 5000
    to_port     = 5000
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

resource "aws_instance" "todo_api_server" {
  ami                    = "ami-0866a3c8686eaeeba"
  instance_type          = "t3.micro"
  key_name               = "todo-api-key"
  vpc_security_group_ids = [aws_security_group.todo_api_sg.id]

  tags = {
    Name = "todo-api-terraform-server"
  }
}

output "public_ip" {
  value = aws_instance.todo_api_server.public_ip
}
