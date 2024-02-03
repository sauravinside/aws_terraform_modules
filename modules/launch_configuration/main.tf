resource "aws_launch_configuration" "as_conf" {
  name            = var.lc_name
  image_id        = var.lc_image_id
  instance_type   = var.lc_instance_type
  security_groups = var.lc_security_groups
  key_name        = var.lc_key_name
}