# Define terraform variables
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Aspentech-www-prod"
    workspaces {
      name = "first-example"
    }
  }
}
