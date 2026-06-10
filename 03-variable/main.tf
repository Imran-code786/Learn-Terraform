variable "x" {
  default = "abc"
}

variable "y" {
  default = 10
}

variable "imran" {
  default = "Noor jahan"
}

variable "z" {
  default = false
}

variable "example1" {
  default = [1, "a", false, 2]
}

variable "example2" {
  default = {
    a = "f00"
    b = 0
    c = "bar"
  }
}
output "map" {
  value = var.example2["b"]
}

output "ex" {
  value = var.example1[2]
}


output "boolean" {
  value = var.z
}

output "khan" {
  value = var.imran
}

output "x" {
  value = "x is  ${var.x}"
}

output "y" {
  value = var.y
}