resource "aws_s3_bucket" "my_bucket" {
    bucket = "${var.my_env}sadi-aws-bootcam-on-you-231"

    tags = {
      Name = "${var.my_env}sadi-aws-bootcam-on-you-231" 
    }
  
}
