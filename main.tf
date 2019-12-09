# Configure the Azure provider
provider "azurerm" {
    subscription_id = "b0c1e8e7-c8f5-469e-ae08-b0840f3635a1"
    client_id       = "f5ba78f2-d8e2-4048-aeef-5780042d8753"
    client_secret   = "2f86d8a2-db7e-4aa6-bd78-9bb5691cb495"
    tenant_id       = "fc489f72-fbbd-411f-af53-8b24d242161e"
}

# Create a new resource group
resource "azurerm_resource_group" "TFResourceGroup" {
    name     = "myTFResourceGroup"
    location = "eastus"

    tags = {
        environment = "This is Terraform Sandbox"
    }
}

# Define terraform variables
resource "tfe_organization" "example_organization" {
  name  = "Aspentech-www-prod"
  email = "lhl_0625@163.com"
}

resource "tfe_workspace" "example_workspace" {
  name         = "Aspentech-code"
  organization = "Aspentech-www-prod"
}

resource "tfe_variable" "test" {
  key          = "db_read_capacity"
  value        = "2"
  category     = "terraform"
  workspace_id = "${ws-YNfExSrWMpdbJmcu}"
}

resource "tfe_variable2" "test" {
  key          = "db_write_capacity"
  value        = "1"
  category     = "terraform"
  workspace_id = "${ws-YNfExSrWMpdbJmcu}"
}
