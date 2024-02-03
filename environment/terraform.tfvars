region = "us-east-1"

ec2_instances = {
  "Instance_by_terraform1" = {
    instance_name = "Instance_by_terraform1"
    ami           = "ami-0277155c3f0ab2930" #mumbai-ubuntu: ami-03f4878755434977f virginia-ubuntu:ami-0277155c3f0ab2930
    instance_type = "t2.micro"
    key_name      = "saurav-virginia-searce-hyd"
  },
  "Instance_by_terraform2" = {
    instance_name = "Instance_by_terraform2"
    ami           = "ami-0277155c3f0ab2930" #mumbai-ubuntu: ami-03f4878755434977f virginia-ubuntu:ami-0277155c3f0ab2930
    instance_type = "t2.micro"
    key_name      = "saurav-virginia-searce-hyd"
  }
}

security_group_name = "sg by terraform"

s3_bucket = [
  {
    acl         = "private"
    bucket_name = "tawfeek-test1"
    folders     = ["folder1/", "folder2/", "folder3/", "folder4/"]
  },
  {
    acl         = "private"
    bucket_name = "tawfeek-test2"
    folders     = ["folder1/", "folder2/", "folder3/", "folder4/"]
  },
]


lc_name          = "web_config_new"
lc_key_name      = "saurav-virginia-searce-hyd"
lc_image_id      = "ami-0b98a32b1c5e0d105"
lc_instance_type = "t2.micro"
