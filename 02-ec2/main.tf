resource "aws_instance" "main" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
}

provider "aws" {
  region = "us-east-1"
}