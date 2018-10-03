output "master_ip" {
  value = "${module.k8s-master.server-ip}"
}
output "master_DNS" {
  value = "${module.k8s-master.public-dns}"
}
output "master_private_DNS" {
  value = "${module.k8s-master.private-dns}"
}
output "worker-1_ip" {
  value = "${module.k8s-worker1.server-ip}"
}
output "worker-1_DNS" {
  value = "${module.k8s-worker1.public-dns}"
}
output "worker-2_ip" {
  value = "${module.k8s-worker2.server-ip}"
}
output "worker-2_DNS" {
  value = "${module.k8s-worker2.public-dns}"
}
