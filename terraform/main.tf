
provider "aws" {
  #access_key = "ACCESS_KEY_HERE"
  #secret_key = "SECRET_KEY_HERE"
  region     = "${var.region}"
}

resource "aws_instance" "jenkins-master" {
  ami           = "${var.jenkins_master_ami}"
  instance_type = "${var.jenkins_master_instance_type}"
  key_name      = "${var.jenkins_master_instance_key}"
  tags {
    Name = "jenkins-master"
    Environment = "INFRA"
  }
}
