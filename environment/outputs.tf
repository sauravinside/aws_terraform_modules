output "instance_IP" {
    value = module.ec2_instance.instance_IP
}
output "security_group_id" {
    value = module.my_security_group.security_group_ID
}