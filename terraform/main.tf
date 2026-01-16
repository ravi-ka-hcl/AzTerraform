terraform {
  backend "azurerm" {
    resource_group_name  = "Terrafrom-ResGrp"
    storage_account_name = "terraformmysvkstroage"
    container_name       = "terraformstroagecontainter"
    ASSIGNEE="40f16ccb-0ebe-45ac-a8af-d257fc178f83"
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
