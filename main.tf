# Define terraform variables
resource "tfe_organization" "example_organization" {
  name  = "Aspentech-www-prod"
  email = "lhl_0625@163.com"
}

resource "tfe_workspace" "example_workspace" {
  name         = "first"
  organization = "Aspentech-www-prod"
}
