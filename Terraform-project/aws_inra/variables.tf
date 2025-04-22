variable "my_env" {
    description = "This is the ENV for the Infra"
    type = string
  
}

variable "aws_my_ami" {
    default = "ami-04f167a56786e4b09"
    type = string
    description = "My Ubuntu Ami"
  
}

variable "aws_my_instnace_size" {
    default = "t2.micro"
    type = string
    description = "My Ubuntu image size"
}

variable "aws_instance_count" {
    type = number
    description = "This is the count of the instances"

  
}
