output "aws_instance_public_ip" {
    value = aws_instance.my-instance.public_ip
  
}

output "aws_instance_private_ip" {
    value = aws_instance.my-instance.private_ip
  
}

output "aws_instance_public_dns" {
    value = aws_instance.my-instance.public_dns
  
}

output "aws_instance_private_dns" {
    value = aws_instance.my-instance.private_dns
  
}


