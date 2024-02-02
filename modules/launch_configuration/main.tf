resource "aws_launch_configuration" "as_conf" {
  name            = var.name
  image_id        = "ami-08b4e658c041c8560"
  instance_type   = "t2.micro"
  security_groups = ["sg-0a04f070bf223552c", "sg-0d96fdab97b315731"]
  key_name        = var.key_name
}