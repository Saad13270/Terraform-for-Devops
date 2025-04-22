resource "aws_key_pair" "SSH-KEY" {
    key_name = "my-ssh-key"
    public_key = file("terraform-key.pub")
  
}

resource "aws_default_vpc" "my-vpc" {
  
}


resource "aws_security_group" "SSG" {
    description = "MY SECURITY GROUP"
    name = "My-Sg"
    vpc_id = aws_default_vpc.my-vpc.id


    ingress {
        description = "INGOING TRAFFIC"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {

        description = "OUTGOING TRAFFIC"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
  
}


resource "aws_instance" "my-instance" {
    ami =  var.aws_ami
    instance_type = var.aws_instance_size
    key_name = aws_key_pair.SSH-KEY.key_name
    security_groups = [aws_security_group.SSG.name]

    tags = {
        Name = "Tera-automate"
    }
    
  
}
