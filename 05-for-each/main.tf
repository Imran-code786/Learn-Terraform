resource "null_resource" "test1" {
  for_each = var.output

  triggers = {
    khan  = each.key
    value = each.value
  }
}

variable "output" {
  default = {
    x = 100
    y = 200
    z = 300
  }
}