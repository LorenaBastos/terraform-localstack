<<<<<<< HEAD:modules/dev/main.tf
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
=======
resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = "t3.micro"

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
>>>>>>> 2ab8453a31f200b0762ea7f566c17bc2abc9ecea:modules/dev/ec2.tf
}