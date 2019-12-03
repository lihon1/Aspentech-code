provider "aws" {
    region           = "us-east-2"
    access_key  = "AKIA5QMSYXFQMSJ4ZI23"
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
