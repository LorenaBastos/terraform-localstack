resource "aws_instance" "webserver" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Test"
  }
}