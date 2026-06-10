resource "aws_instance" "main" {
  for_each      = var.servers
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"

  tags = {
    Name = each.key
  }
}

variable "servers" {
  default = {
    one   = ""
    two   = ""
    three = ""
  }
}

output "instance_id" {
  value = [for o in aws_instance.main : o.id]
}

output "ids_with_name" {
  value = { for i, j in aws_instance.main : i => j.id }
}