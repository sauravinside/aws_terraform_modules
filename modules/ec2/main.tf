resource "aws_instance" "web" {
  tags = {
    Name = var.instance_name
    Created-By = "Saurav by Terraform"
  }
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.security_group
}