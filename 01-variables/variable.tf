variable "sample_string" {
  default = "hello world"
}

## shell scripting equivalent sample_string "hello world"
## scripting is easy with python base!!!

## To print in shell script we are using echo, following same in terraform variables printing also
## echo $sample_string

output "saample_string" {
  value = "var.sample_string"
}
## in the above case we are just printing variable , if the varible is a combiantion of strings then we can use
below syntax
output "sample_stirng1"{
        value = "value of sample string = ${var.sample_string}"
}
