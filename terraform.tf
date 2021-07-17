terraform {
    backend "azurerm" {
        resource_group_name = "remote-state-gopal"
        storage_account_name = "terraformgopal1"
        container_name = "tfstate-gopal"
        key = "web.tfstate"
    }
}