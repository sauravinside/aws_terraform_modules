variable "bucket_name" {
  type = string
}

variable "acl" {
  type = string
}

variable "folders" {
  type = set(string)
}
