provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ubuntu_linux" {
    count = 1
    ami = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"
    key_name = "redHat"
    tags = {
        Name = "ubuntu_linux"
    }
}
resource "aws_instance" "RHEL" {
    availability_zone = "us-east-1a"
    ami = "ami-0fff1b9a61dec8a5f"
    instance_type = "t2.micro"
    key_name = "redHat"
    tags = {
      Name ="RHEL"
    }
}
