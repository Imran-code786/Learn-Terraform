variable "env" {}

output "ENV" {
  value = var.env
}

##terraform apply -var-file=dev.tfvars
#terraform apply -auto-approve -var-file=prod.tfvars