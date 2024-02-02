module "ec2_instance" {
  source        = "../modules/ec2"
  instance_name  = var.instance_name
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  security_group = [module.my_security_group.security_group_ID]
  depends_on = [module.my_security_group]
}

module "my_security_group" {
  source = "../modules/security_group"
  security_group_name = var.security_group_name
}