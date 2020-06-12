provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone

  credentials = file("../.credentials/tf-webapp.json")
}

terraform {
  backend "gcs" {
    bucket  = "tf-webapp-268705"
    prefix  = "terraform/state/k8.tfstate"
  }
}
