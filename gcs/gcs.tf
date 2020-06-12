resource "google_storage_bucket" "gcs_bucket" {
  name          = "${var.project}"
  location      = "US"
  project = var.project
  force_destroy = false

  bucket_policy_only = true
}