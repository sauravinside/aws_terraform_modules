variable "region" {
  type = string
}
############################################

variable "ami" {
  type = string
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "key_name" {
  type    = string
  default = "saurav-virginia-searce-hyd"
}
variable "instance_name" {
  type    = string
  default = "Instance_by_terraform"
}
##############################################
variable "security_group_name" {
    type = string
}
##############################################

variable "bucket_name" {
  type = string
}
variable "acl" {
  type = string
}
#################################################
variable "folders" {
  type = set(string)
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
  type = string
  default = "t2.micro"
}
variable "lc_image_id" {
  type = string
}