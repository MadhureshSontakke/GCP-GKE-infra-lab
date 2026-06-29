# backend-bucket = "terraform-backend-2099-2"
# backend-bucket-prefix = "terraform/prod/state"
my_project = "qwiklabs-gcp-01-47500ba5677e"
my_region  = "us-west1"
my_zone    = "us-west1-b"
vm = {
  "vm1" = {
    env_name     = "prod"
    machine_type = "n2-standard-2"
    disk_size    = 10
  }
  "vm2" = {
    env_name     = "dev"
    machine_type = "n2-standard-2"
    disk_size    = 10
  }
  "vm3" = {
    env_name     = "uat"
    machine_type = "n2-standard-2"
    disk_size    = 20
  }
}

# subnet_name = {
#   "public" = {
#     name = "public-subnet"
#     cidr_range  = "10.0.0.0/24"
#   }

#   "private" = {
#     name = "private-subnet"
#     cidr_range  = "10.0.1.0/24"

#   }
# }