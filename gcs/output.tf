output "gcs_bucket" {
  value = google_storage_bucket.gcs_bucket.self_link
}
