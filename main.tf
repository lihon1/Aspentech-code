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

resource "tfe_organization_token" "test" {
  organization = "Aspentech-www-prod"
}

resource "tfe_oauth_client" "test" {
  organization     = "Aspentech-www-prod"
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = "ot-f3Dw3NDLywkCS8wv"
  service_provider = "github"
}

