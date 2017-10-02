terraform {
  backend "s3" {
    bucket = "evr-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  #access_key = "ACCESS_KEY_HERE"
  #secret_key = "SECRET_KEY_HERE"
  region     = "${var.region}"
}

resource "aws_instance" "amzn-test" {
  ami           = "ami-4fffc834"
  instance_type = "t2.micro"
  tags {
    Name = "test"
    Environment = "CI"
  }
}

resource "aws_s3_bucket" "tfstate-bucket" {
  bucket = "evr-tfstate"
  acl    = "private"
  versioning {
   enabled = true
 }
}
