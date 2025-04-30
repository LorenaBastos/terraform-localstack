resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Env = "DEV"
  }
}

resource "aws_instance" "api-server" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Env = "DEV"
  }
}