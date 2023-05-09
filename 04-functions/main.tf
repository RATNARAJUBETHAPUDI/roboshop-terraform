data "aws_ami" "centos" {
  owners = ["self"]
  most_recent = true
  name_regex = "Centos-8-Devops-practice"

}

data "aws_security_group" "allow_all" {
  name = "allow_all"

}

variable "instance_type" {
  default = "t3.micro"

}

variable "components" {
  default = ["frontend" , "mongodb" , "catalogue"]

}
resource "aws_instance" "instance" {
  count = length(var.components)
  ami   = data.aws_ami.centos.image_id
  instance_type = "var.instance_type"
  vpc_security_group_ids = [data.aws_security_group.allow_all.id]


}
tags = {
  name =var.components[count.index]
}