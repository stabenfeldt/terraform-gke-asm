# GKE with VPC-native and Athmos Service Mesh

This repo is a companion repo to the [Provision a GKE Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-gke-cluster), containing Terraform configuration files to provision an GKE cluster on GCP.


### Create a cluster
`terraform apply`
### Connect to the newly created cluster:
 `gcloud container clusters get-credentials techs-internal-staging-k8s-gke --zone europe-west1`

### Deploy Hello World:
```
kubectl create deployment hello-server \
    --image=us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0

kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 8080
```

Find the IP 
kubectl get service hello-server
curl 34.79.233.216 #=> Hello, world!


# Setup VPC-native
## VPC
#resource "google_compute_network" "custom" {
#  name                    = "${var.project_id}-vpc"
#  auto_create_subnetworks = "false"
#}
#
## Subnet
#resource "google_compute_subnetwork" "custom" {
#  name          = "${var.project_id}-subnet"
#  ip_cidr_range = "10.10.0.0/24"
#  region        = var.region
#  network       = google_compute_network.custom.name
#  secondary_ip_range {
#    range_name    = "services-range"
#    ip_cidr_range = "192.168.1.0/25"
#  }
#
#  secondary_ip_range {
#    range_name    = "pod-ranges"
#    ip_cidr_range = "192.168.64.0/25"
#  }
#}
