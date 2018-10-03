# kubernetes deployment

This has two stages
1. terraform - To build 3 ubuntu VMs (hard-coded Ubuntu 18.04 AMI ) and necessary security groups.Entirely built on AWS free tier
2. Ansible to install kubernetes with one master node and two worker nodes


#What to Update
Rename the file variables.tf_sample as below
`cp terraform/variables.tf_sample variables.tf`
Updae your AWS Access key, secret key and the Region

Generate your ssh key as below
`ssh-keygen -f ~/.ssh/awsvmkey`
Update the below files
 ansible/vars/all	--> update master_fqdn
 ansible/inventoryServer		--> Names/IPs of master and worker nodes


#How to Run
`cd terraform`
`terraform init`
`terraform apply`

cd ../ansible
`ansible-playbook -i inventory site.yml`
