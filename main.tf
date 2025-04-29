resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Test"
  }
}

resource "aws_instance" "api-server" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Test-2"
  }
}