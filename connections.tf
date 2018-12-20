provider "google" {
  credentials = "${file("../account.json")}"
  project     = "testproject-225423"
  region      = "europe-west3"
}

provider "aws" {
  region = "${var.s3_regions}"
}

provider "azurerm" {
  subscription_id = "0"
  client_id       = "1"
  client_secret   = "2"
  tenant_id       = "3"
}
