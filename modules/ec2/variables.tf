variable "instance_name" {
  type    = string
  default = "Instance_by_terraform"
}
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
variable "security_group" {
  type = list(string)
}