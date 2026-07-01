# backend-bucket = "terraform-backend-2099-2"
# backend-bucket-prefix = "terraform/prod/state"
my_project = "project-df9bb8d2-8b74-40f0-b1a"
my_region  = "us-east4"
# my_zone    = "us-west1-b"
vm = {
  "vm1" = {
    env_name     = "prod"
    machine_type = "n2-standard-2"
    disk_size    = 10
  }
  # "vm2" = {
  #   env_name     = "dev"
  #   machine_type = "n2-standard-2"
  #   disk_size    = 10
  # }
  # "vm3" = {
  #   env_name     = "uat"
  #   machine_type = "n2-standard-2"
  #   disk_size    = 20
  # }
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