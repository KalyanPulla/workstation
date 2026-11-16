common:
	git pull
	rm -f .terraform/terraform.tfstate
apply:
	terraform init
	terraform apply -auto-approve
destroy:
	terraform init
	terraform destroy -auto-approve