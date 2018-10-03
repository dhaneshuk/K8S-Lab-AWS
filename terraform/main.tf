resource "aws_key_pair" "awsvmkey" {
  key_name   = "awsvm-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

module "k8s-master" {
  source = "server"

  name            = "k8s-master"
  key_pair        = "${aws_key_pair.awsvmkey.key_name}"
  key_pair_key    = "~/.ssh/id_rsa"
  vpc_security_group_ids  = ["${aws_security_group.k8s_sg.id}"]
  app             = "k8s"
  role            = "master"
}

module "k8s-worker1" {
  source = "server"
  name            = "k8s-worker1"
  key_pair        = "${aws_key_pair.awsvmkey.key_name}"
  key_pair_key    = "~/.ssh/id_rsa"
  vpc_security_group_ids  = ["${aws_security_group.k8s_sg.id}"]
  app             = "k8s"
  role            = "worker-1"
}
module "k8s-worker2" {
  source = "server"
  name            = "k8s-worker2"
  key_pair        = "${aws_key_pair.awsvmkey.key_name}"
  key_pair_key    = "~/.ssh/id_rsa"
  vpc_security_group_ids  = ["${aws_security_group.k8s_sg.id}"]
  app             = "k8s"
  role            = "worker-2"
}
