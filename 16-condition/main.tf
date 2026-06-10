resource "aws_instance" "main" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = var.env == "prod" ? "t3.medium" : "t3.small"
}

variable "env" {
  default = "dev"
}