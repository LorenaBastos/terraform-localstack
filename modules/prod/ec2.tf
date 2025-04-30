resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = "t2.medium"

  tags = {
    Env = "PROD"
  }
}

resource "aws_instance" "api-server" {
  ami           = var.ami
  instance_type = "t2.medium"

  tags = {
    Env = "PROD"
  }
}