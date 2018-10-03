output "server-ip" {
  value = "${aws_eip.work-eip.public_ip}"
}

output "public-dns" {
  value = "${aws_instance.work.public_dns}"
}
output "private-dns" {
  value = "${aws_instance.work.private_dns}"
}
