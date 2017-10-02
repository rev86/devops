provider "aws" {
  #access_key = "ACCESS_KEY_HERE"
  #secret_key = "SECRET_KEY_HERE"
  region     = "${var.region}"
}

resource "aws_instance" "amzn-test" {
  ami           = "ami-4fffc834"
  instance_type = "t2.micro"
  key_name      = "test"
  tag_key       = "Name"
  tag_value     = "test"  
}
