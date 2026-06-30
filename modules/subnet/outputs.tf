output "subnet-ids" {
    description = "map of subnet id's"
    value = {for k, subnet in google_compute_subnetwork.subnet : k => subnet.id}
  
}