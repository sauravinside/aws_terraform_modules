resource "aws_security_group" "allow_all" {
  name        = var.security_group_name
  description = "this security group is created by saurav using terraform for testing purpose"
  tags = {
    Created-By = "Saurav with terraform"
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}