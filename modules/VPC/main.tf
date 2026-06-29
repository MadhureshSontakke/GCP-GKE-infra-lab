# locals {
#   public_subnet = {
#     name = "public-subnet"
#     cidr_range  = "10.0.0.0/24"
#   }  
#   private_subnet ={
#     name = "private-subnet"
#     cidr_range  = "10.0.1.0/24"
#   }
# }



resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  routing_mode            = "REGIONAL"
  delete_default_routes_on_create = true
  auto_create_subnetworks = false
  
  
}

output "vpc_output" {
  value = google_compute_network.vpc_network.id  
}

# resource "google_compute_subnetwork" "subnet" {
#   for_each = toset(var.subnet_name)
#   name          = "${var.vpc_name}-${each.value.name}"
#   ip_cidr_range = each.value.cidr_range
#   region        = var.region
#   network       = google_compute_network.vpc_network.id
  
# }


