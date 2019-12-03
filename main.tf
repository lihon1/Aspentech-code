provider "aws" {
    region           = "us-east-2"
    access_key  = "AKIA5QMSYXFQMSJ4ZI23"
    secret_key   = "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"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Aspentech-www-prod"
    workspaces {
      name = "Aspentech-code"
    }
  }
}
