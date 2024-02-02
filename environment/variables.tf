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