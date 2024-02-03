output "instance1_IP" {
  value = module.ec2_instance
}
output "security_group_id" {
  value = module.my_security_group.security_group_ID
}
