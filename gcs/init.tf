provider "google" {
  project = "var.project"
  region  = "us-central1"
  zone    = "us-central1-a"

  credentials = file("../.credentials/tf-webapp.json")
}

