#variable "access_key" {}
#variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "tfstate_bucket" {
  default = "evr-tfstate"
}
variable "tfstate_path" {
  default = "terraform.tfstate"
}
