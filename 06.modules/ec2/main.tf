resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = {
    Name = "var.name"
  }
}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["950538586636"]

}

resource "aws_security_group" "sg {
name = "var.name"
description = "Allow TLS inbound traffic"


# Ingress Rules (Inbound Traffic)
ingress {
description = "SSH"
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}



# Egress Rules (Outbound Traffic)
egress {
from_port = 0
to_port = 0
protocol = "-1" # Allow all protocols
cidr_blocks = ["0.0.0.0/0"]
ipv6_cidr_blocks = ["::/0"]
}

tags = {
Name = "var.name"
}
}

variable "name"{}

output "public_ip"

