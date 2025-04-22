module "dev-app" {
    source = "./aws_infra"
    my_env = "dev"
    aws_my_ami = "ami-04f167a56786e4b09"
    aws_my_instnace_size = "t2.micro"
    aws_instance_count = 1
  
}


module "stage-app" {
    source = "./aws_infra"
    my_env = "stage"
    aws_my_ami = "ami-04f167a56786e4b09"
    aws_my_instnace_size = "t2.micro"
    aws_instance_count = 1
  
}


module "prod-app" {
    source = "./aws_infra"
    my_env = "prod"
    aws_my_ami = "ami-04f167a56786e4b09"
    aws_my_instnace_size = "t2.micro"
    aws_instance_count = 2
  
}
