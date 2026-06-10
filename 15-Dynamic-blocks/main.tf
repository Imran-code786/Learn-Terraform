resource "aws_security_group" "main" {

  for_each = var.component
  name     = each.key

  dynamic "ingress" {
    for_each = each.value["ports"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
      description = ingress.key
    }
  }
}

variable "component" {
  default = {
    one = {
      ports = {
        ssh   = 22
        http  = 80
        https = 443
      }
    }

    two = {
      ports = {
        ssh = 22
        app = 8080
      }
    }
  }
}