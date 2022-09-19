terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.36.0"
    }
  }
  backend "gcs" {
    bucket = "terracloud-1-tf-states"
    prefix = "state"
  }
}

provider "google" {
  project = "terraform-vm-362923"
}
