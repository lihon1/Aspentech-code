provider "aws" {
    region           = "us-east-2"
    access_key  = "AKIA5QMSYXFQPY6CECV6"
    secret_key   = "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"
}

resource "tfe_organization" "test" {
  name  = "Aspentech-www-prod"
  email = "lhl_0625@163.com"
}

resource "tfe_workspace" "test" {
  name         = "Aspentech-code"
  organization = "Aspentech-www-prod"  
}
