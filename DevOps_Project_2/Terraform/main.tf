data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
