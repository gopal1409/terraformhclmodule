provider "azurerm" {
    features {}
}
module "location_us2w" {
    source = "./location"
    web_server_location="westus2"
    web_server_rg = "${var.web_server_rg}-us2w" #web-us2w
    resource_prefix = "${var.resource_prefix}-us2w"
    web_server_address_space = "1.0.0.0/22"
    web_server_name = var.web_server_name
    environment = var.environment
    web_server_count = var.web_server_count
    web_server_subnets = {
        web-server = "1.0.1.0/24"
    }

}

module "location_us2e" {
    source = "./location"
    web_server_location = "eastus2"
    web_server_rg = "${var.web_server_rg}-us2e"
    resource_prefix = "${var.resource_prefix}-us2e"
    web_server_address_space = "2.0.0.0/22"
    web_server_name = var.web_server_name
    environment = var.environment
    web_server_count = var.web_server_count
    web_server_subnets = {
        web-server = "2.0.1.0/24"
    }
}
