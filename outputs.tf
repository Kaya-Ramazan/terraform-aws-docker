output "instance_public_ip" {
    value = aws_instance.tfmyec2.*.id
  
}

output "sec_gr_id" {
    value = aws_security_group.tf-sec-gr.vpc_id
  
}

output "instance_id" {
    value = aws_instance.tfmyec2.*.id
  
}