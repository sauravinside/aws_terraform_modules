variable "region" {
  type = string
}
############################################
variable "ec2_instances" {
  description = "ec2 instances necessary values"
  type = map(object({
    instance_name = string
    ami           = string
    instance_type = string
    key_name      = string
  }))
}

##############################################
variable "security_group_name" {
  type = string
}
##############################################
variable "s3_bucket" {
  description = "the s3 bucket parameters"
  type = list(object({
    bucket_name = string
    acl         = string
    folders     = set(string)
  }))
}
#################################################
variable "lc_name" {
  default = "web_config"
  type    = string
}
variable "lc_key_name" {
  default = "virgina"
  type    = string
}
variable "lc_instance_type" {
  type    = string
  default = "t2.micro"
}
variable "lc_image_id" {
  type = string
}
