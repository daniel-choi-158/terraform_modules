provider "google" {
  project = "tf-webapp-268705"
  region  = "us-central1"
  zone    = "us-central1-a"

  credentials = file("../.credentials/tf-webapp.json")
}

terraform {
  backend "gcs" {
    bucket  = "tf-webapp-268705"
    prefix  = "terraform/state/instance.tfstate"
  }
}