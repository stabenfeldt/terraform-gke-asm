variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
	default = "europe-north1"
}

provider "google" {
  project = var.project_id
  region  = var.region
}
