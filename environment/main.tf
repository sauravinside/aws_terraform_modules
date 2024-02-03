module "ec2_instance" {
  source = "../modules/ec2"
  for_each = {
    for instances in var.ec2_instances : instances.instance_name => instances
  }
  depends_on     = [module.my_security_group]
  instance_name  = each.value.instance_name
  ami            = each.value.ami
  instance_type  = each.value.instance_type
  key_name       = each.value.key_name
  security_group = [module.my_security_group.security_group_ID]
}

module "my_security_group" {
  source              = "../modules/security_group"
  security_group_name = var.security_group_name
}

module "s3_bucket" {
  source = "../modules/s3_bucket"
  for_each = {
    for buckets in var.s3_bucket : buckets.bucket_name => buckets
  }
  acl         = each.value.acl
  bucket_name = each.value.bucket_name
  folders     = each.value.folders
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
