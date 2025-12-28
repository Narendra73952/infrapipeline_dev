terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }

  
  backend "azurerm" {
    resource_group_name  = "sabkarg"  # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "sabkasa"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "sabkaca"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  
}

provider "azurerm" {
  features {}
  subscription_id = "987e5914-628e-4e9a-8c8f-d7fa87735002"
}



