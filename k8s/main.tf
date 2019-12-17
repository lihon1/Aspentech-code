# Configure the Azure provider
provider "azurerm" {
  subscription_id = "b0c1e8e7-c8f5-469e-ae08-b0840f3635a1"
  client_id       = "f5ba78f2-d8e2-4048-aeef-5780042d8753"
  client_secret   = "2f86d8a2-db7e-4aa6-bd78-9bb5691cb495"
  tenant_id       = "fc489f72-fbbd-411f-af53-8b24d242161e"
}

# Configure the resource group
resource "azurerm_resource_group" "k8s" {
  name     = "azure-k8stest"
  location = "Central US"

  tags = {
    environment = "for development"
  }
}
