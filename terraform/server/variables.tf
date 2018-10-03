variable "instance_type" {
  type = "string"
  default = "t2.micro"
}
variable "name" {
  type = "string"
}
variable "app" {
  type = "string"
}
variable "role" {
  type = "string"
}

variable "key_pair" {
  type = "string"
  default = "id_rsa"
}

variable "key_pair_key" {
  type = "string"
}

variable "vpc_security_group_ids" {
  type = "list"
  default = []
}
