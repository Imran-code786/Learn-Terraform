variable "some" {
  default = "hello world"
}

output "some_incaps" {
  value = upper(var.some)
}

output "some_lower" {
  value = lower("HELLO WORLD")
}

output "some_title" {
  value = title("hello world")
}
output "some_length" {
  value = length(var.some)
}

output "some_substr" {
  value = substr(var.some, 0, 8)
}

output "some_join" {
  value = join("*", ["hello", "world", "terraform"])
}

output "some_split" {
  value = split(" ", var.some)
}

output "some_replace" {
  value = replace(var.some, "world", "terraform")
}

output "some_max" {
  value = max(10, 20, 30)
}

output "some_formate" {
  value = format("Hello, %s! You have %d items.", "user", 5)
}