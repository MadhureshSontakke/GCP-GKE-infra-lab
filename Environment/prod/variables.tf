# variable "backend-bucket" {
#   description = "The GCS bucket to use for Terraform state storage"
#   type        = string
#   default     = "terraform-backend-2099-2"
# }

# variable "backend-bucket-prefix" {
# description = "backend bucket prefix"
# type = string
# default = "terraform/prod/state"
# }

variable "my_project" {
  description = "The GCP project to deploy resources in"
  type        = string
  default     = "qwiklabs-gcp-01-4ab904757393"

}

variable "my_region" {
  description = "The GCP region to deploy resources in"
  type        = string
  default     = "europe-west1"
}

variable "my_zone" {
  description = "The GCP zone to deploy resources in"
  type        = string
  default     = "europe-west1-b"

}

variable "vm" {
  description = "value for the vm name"
  type = map(object({
    env_name     = string
    machine_type = string
    disk_size    = number
  }))

}




variable "apis" {
  description = "List of APIs to enable"
  type        = list(string)
  default = [
    "compute.googleapis.com",
    "iam.googleapis.com",
    "container.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "secretmanager.googleapis.com",
  ]
}


variable "vpc_name" {
  description = "The name of the VPC network to create"
  type        = string
  default     = "my-vpc-network"

}

# variable "subnetwork_cidr" {
#   description = "The CIDR range for the subnetwork"
#   type        = string
#   default     = "10.0.0.0/24"
# }

# variable "region" {
#   description = "The GCP region to deploy resources in"
#   type        = string
#   default     = "us-west1"
# }


variable "subnet_name" {
  description = "The name of the subnetwork to create"
  type        = map(object({
    name = string,
    cidr_range  = string
    
  }))
default = {
  "public_subnet" = {
    name = "public-subnet"
    cidr_range  = "10.0.0.0/24"
    
  }
  "private_subnet" = {
    name = "private-subnet"
    cidr_range  = "10.0.1.0/24"
    
  }
} 
}