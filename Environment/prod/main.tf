resource "google_compute_instance" "default" {
  # count        = 2
  for_each     = var.vm
  name         = each.key
  machine_type = each.value.machine_type
  zone         = var.my_zone

  tags = [
    each.value.env_name
  ]
  labels = {
    env = each.value.env_name
  }
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20

      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Ephemeral public IP
    }
  }
}


# #### create a bucket
# resource "google_storage_bucket" "test-bucket" {
#   name     = "${var.my_project}-my-test-bucket-123-425612"
#   location = var.my_region
# }

resource "google_compute_disk" "my-disk" {
  for_each = var.vm
  name     = "my-disk-${each.key}"
  type     = "pd-standard"
  zone     = var.my_zone
  size     = each.value.disk_size != null ? each.value.disk_size : 10
  labels = {
    env = each.value.env_name
  }

}

resource "google_compute_attached_disk" "my-attached-disk" {
  for_each = var.vm
  instance = google_compute_instance.default[each.key].name
  disk     = google_compute_disk.my-disk[each.key].name
  zone     = var.my_zone
  depends_on = [google_compute_disk.my-disk, google_compute_instance.default]
}


module "APIs" {
  source = "../../modules/APIs"
  # project_id = var.my_project
  # apis = [
  #   "compute.googleapis.com",
  #   "storage.googleapis.com"
  # ]
  # apis = var.apis

}

module "vpc" {
  source = "../../modules/VPC"
  # vpc_name  = var.vpc_name
  # region    = var.my_region
  # subnet_name = var.subnet_name

}

module "subnet" {
  source      = "../../modules/subnet"
  subnet_name = var.subnet_name
  network_id  = module.vpc.vpc_output

}
