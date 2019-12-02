provider "aws" {
    region           = "us-east-2"
    access_key  = "AKIA5QMSYXFQMSJ4ZI23"
    secret_key   = "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"
}

resource "tfe_organization" "test" {
  name  = "Aspentech-www-test"
  email = "alice.li@aspentech.com"
}

resource "tfe_workspace" "test" {
  name         = "Aspentech-test"
  organization = "Aspentech-www-test"
}
