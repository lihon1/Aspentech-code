terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Aspentech-www-prod"
    workspaces {
      name = "Aspentech-test"
    }
  }
}
