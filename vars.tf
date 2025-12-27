variable "sample" {
  default     = 100
  
}


variable "sample1" {
  default     = "Hello world"
  
}

output "sample"{
    value = var.sample
}

output "sample1"{
    value = var.sample1
}


output "sample-ext"{
    value = "value of sample -${var.sample}"
}
