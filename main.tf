resource "aws_instance" "webserver" {
  ami           = "123456743"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Test"
  }
}