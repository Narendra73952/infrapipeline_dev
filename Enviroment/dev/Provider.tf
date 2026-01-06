terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }

  
  backend "azurerm" {
    resource_group_name  = "ng_rg"  # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "ngstorage02"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "ngcong02"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  
}

provider "azurerm" {
  features {}
  subscription_id = "716491cb-e2f6-4c7c-846f-b7d135de9a1e"
}



