build-london:
	terraform workspace new london || terraform workspace select london && terraform init && terraform apply -var-file env/regions/eu-west-2/london.tfvars --auto-approve

destroy-london:
	terraform workspace new london || terraform workspace select london && terraform init && terraform destroy -var-file env/regions/eu-west-2/london.tfvars --auto-approve



build-paris:
	terraform workspace new paris || terraform workspace select paris && terraform init && terraform apply -var-file env/regions/eu-west-3/paris.tfvars --auto-approve

destroy-paris:
	terraform workspace new paris || terraform workspace select paris && terraform init && terraform destroy -var-file env/regions/eu-west-3/paris.tfvars --auto-approve



build-mumbai:
	terraform workspace new mumbai || terraform workspace select mumbai && terraform init && terraform apply -var-file env/regions/ap-south-1/mumbai.tfvars --auto-approve

destroy-mumbai:
	terraform workspace new mumbai || terraform workspace select mumbai && terraform init && terraform destroy -var-file env/regions/ap-south-1/mumbai.tfvars --auto-approve
