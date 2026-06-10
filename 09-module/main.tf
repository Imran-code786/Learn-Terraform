module "sample" {
  source  = "./sample"
  message = var.message
  a       = var.a
  b       = var.b
}

variable "message" {
  default = "Hello world"
}

variable "a" {
  default = 10
}

variable "b" {
  default = 200
}

output "output_from_module" {
  value = module.sample.multiply
}

output "output_from_message" {
  value = module.sample.message
}