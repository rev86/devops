#variable "access_key" {}
#variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "jenkins_master_instance_key" {
  default = "test"
}
variable "tfstate_bucket" {
  default = "evr-tfstate"
}
variable "tfstate_path" {
  default = "terraform.tfstate"
}
variable "jenkins_master_ami" {
  default = "ami-b00ff4ca"
}
variable "jenkins_master_instance_type" {
  default = "t2.micro"
}
variable "tfstate_bucket_name" {
  default = "evr-tfstate"
}
