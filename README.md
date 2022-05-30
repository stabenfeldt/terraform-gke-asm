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

