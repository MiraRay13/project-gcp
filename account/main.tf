data "google_billing_account" "acct" {
	display_name = "MyBillingAcc"
	open = true
}

output "billing_account_name" {
    value = data.google_billing_account.acct.name
}

resource "random_password" "password" {
	length = 16
	numeric = false
	special = false
	lower = true
	upper = false
}

resource "google_project" "dev-terraform" {
	name = "dev-terraform"
	project_id = random_password.password.result
	billing_account = data.google_billing_account.acct.id
}

resource "null_resource" "set-project" {
	 triggers = {
    always_run = "${timestamp()}"
  }
	
	provisioner "local-exec" {
	command = "gcloud config set project ${google_project.dev-terraform.project_id}"
	}
}

resource "null_resource" "unset-project" {
	provisioner "local-exec" {
	when = destroy
	command = "gcloud config unset project"
	}
}