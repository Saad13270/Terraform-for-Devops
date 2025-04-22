resource "aws_instance" "my-instance" {
    count = var.aws_instance_count
    ami =  var.aws_my_ami
    instance_type = var.aws_my_instnace_size

    tags = {
        Name = "${var.my_env}Tera-automate"
    }
    
  
}
