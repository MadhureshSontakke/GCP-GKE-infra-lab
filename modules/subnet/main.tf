resource "google_compute_subnetwork" "subnet" {
  for_each = var.subnet_name
  name          = "${var.vpc_name}-${each.value.name}"
  ip_cidr_range = each.value.cidr_range
  region        = var.region
  network       = var.network_id
}

