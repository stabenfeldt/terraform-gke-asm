terraform {
 backend "gcs" {
   bucket  = "drd-tf-state-k8s-staging"
   prefix  = "terraform/state"
 }
}
