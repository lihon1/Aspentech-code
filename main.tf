provider "aws" {
    region           = "us-east-2"
    access_key  = "AKIA5QMSYXFQM4O563RZ"
    secret_key   = "Mz8EK+gfUMNOy0GpC2dqSoWtSBM68qAbWhs7fQSu4vXAmy"
}

resource "tfe_organization" "example" {
  name  = "Aspentech-www-prod"
  email = "lhl_0625@163.com"
}

resource "tfe_workspace" "test" {
  name         = "Aspentech-code"
  organization = "Aspentech-www-prod"
}

