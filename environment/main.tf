module "ec2_instance" {
  source         = "../modules/ec2"
  depends_on     = [module.my_security_group]
  instance_name  = var.instance_name
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  security_group = [module.my_security_group.security_group_ID]
}

module "my_security_group" {
  source              = "../modules/security_group"
  security_group_name = var.security_group_name
}

module "s3_bucket" {
  source      = "../modules/s3_bucket"
  acl         = var.acl
  bucket_name = var.bucket_name
  folders     = var.folders
}

module "launch_configuration" {
  source             = "../modules/launch_configuration"
  depends_on         = [module.my_security_group]
  lc_name            = var.lc_name
  lc_image_id        = var.lc_image_id
  lc_instance_type   = var.lc_instance_type
  lc_security_groups = [module.my_security_group.security_group_ID]
  lc_key_name        = var.lc_key_name
}
