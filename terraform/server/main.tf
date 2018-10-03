resource "aws_instance" "work" {
  ami             = "ami-0d773a3b7bb2bb1c1"	# Ubuntu 18.04
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_pair}"

  tags {
    Name    = "${var.name}"
    App     = "${var.app}"
    k8srole = "${var.role}"
  }

}
