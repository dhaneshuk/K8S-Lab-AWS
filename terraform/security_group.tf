
resource "aws_security_group" "k8s_sg" {
  name = "k8s_sg"
  description = "Kubernetes security group"
}

resource "aws_security_group_rule" "allow_ssh" {

  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  description = "Allow SSH inbound traffic"
  security_group_id = "${aws_security_group.k8s_sg.id}"
}

resource "aws_security_group_rule" "allow_all_egress_k8s" {
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "all"
  cidr_blocks     = ["0.0.0.0/0"]
  description     = "Outbound access to ANY"

  security_group_id = "${aws_security_group.k8s_sg.id}"
}


resource "aws_security_group_rule" "allow_all_myip_k8s" {
  type            = "ingress"
  from_port       = 0
  to_port         = 0
  protocol        = "all"
  cidr_blocks     = ["${data.external.myipaddr.result["ip"]}/32"]
  description     = "Management Ports for K8s Cluster"

  security_group_id = "${aws_security_group.k8s_sg.id}"
}

resource "aws_security_group_rule" "allow_SG_any_k8s" {
  type            = "ingress"
  from_port       = 0
  to_port         = 0
  protocol        = "all"
  self            = true
  description     = "Any from SG for K8s Cluster"

  security_group_id = "${aws_security_group.k8s_sg.id}"
}

