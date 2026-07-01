resource "google_container_cluster" "gke-cluster" {
    name = var.cluster_name
    location = "${var.region}-b"
    network = var.network_id
    subnetwork = var.subnet
    remove_default_node_pool = true
    initial_node_count = 1
    logging_service = "logging.googleapis.com/kubernetes"
    monitoring_service = "monitoring.googleapis.com/kubernetes"
    deletion_protection = false
  
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.cluster_name}-node-pool"
  location   = "${var.region}-b"
  cluster    = google_container_cluster.gke-cluster.name
  node_count = var.node_count
  

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]
  }
}