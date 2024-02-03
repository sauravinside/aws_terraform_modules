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
variable "lc_security_groups" {
  type = list(string)
}
variable "lc_image_id" {
  type = string
}