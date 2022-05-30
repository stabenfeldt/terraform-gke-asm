module "asm" {
  source            = "terraform-google-modules/kubernetes-engine/google//modules/asm"
  project_id        = var.project_id
  cluster_name      = resource.google_container_cluster.primary.name
  cluster_location  = resource.google_container_cluster.primary.location
  enable_cni        = true
}
