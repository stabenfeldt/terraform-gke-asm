resource "google_storage_bucket" "default" {
  name          = "drd-tf-state-k8s-staging"
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
	}
}
