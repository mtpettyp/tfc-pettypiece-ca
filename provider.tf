terraform {
  backend "remote" {
    organization = "pettypiece"
    workspaces {
      name = "tfc-pettypiece-ca"
    }
  }
  required_providers {
    tfe = {
      version = "~> 0.35.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "tfe" {

}
