terraform {
  backend "s3" {
    bucket = "evr-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "tfstate-bucket" {
  bucket = "${var.tfstate_bucket_name}"
  acl    = "private"
  versioning {
   enabled = true
 }
}
