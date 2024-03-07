resource "google_storage_bucket" "auto-expire" {
  name          = "gcs-bucket-1999"
  project = "prj-diameterhealth-working"
  location      = "US"
  force_destroy = true
}