terraform {
  backend "azurerm" {
    resource_group_name  = "Terrafrom-ResGrp"
    storage_account_name = "terraformmysvkstroage"
    container_name       = "terraformstroagecontainter"
    ASSIGNEE="e9aacc59-86d2-49fe-94fa-e7c77be530fd"
    key                  = "dev.terraform.tfstate"
    }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
