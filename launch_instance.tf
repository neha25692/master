provider "aws" {
  region = "us-east-2"
 access_key = "AKIAWJGPURL4SLDZIHK3"
  secret_key = "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"
}

resource "aws_instance" "linux_Server" {
  ami           = "ami-0e01ce4ee18447327"
  instance_type = "t3.micro"
 user_data = file("jenkinss.sh")
tags = {
    Name = "HelloWorld"
  }
}
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = "${aws_vpc.my_vpc.id}"
  cidr_block        = "172.16.1.0/16"
  availability_zone = "us-east-2b"

  tags = {
    Name = "HelloWorld"
  }
}
