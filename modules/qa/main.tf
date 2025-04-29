resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Env = "QA"
  }
}

resource "aws_instance" "api-server" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Env = "QA"
  }
}