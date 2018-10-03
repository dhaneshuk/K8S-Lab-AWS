resource "aws_eip" "work-eip" {
  instance    = "${aws_instance.work.id}"
}
