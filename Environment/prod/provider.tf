terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.22.0"
    }
  }
}

provider "google" {
  project = var.my_project
  region  = var.my_region
  # zone    = var.my_zone
  # use a string path; path.module ensures the file is looked up next to these .tf files
  # credentials = file("${path.module}/creds.json")
}
