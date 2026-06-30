variable "region" {
  description = "The GCP region to deploy resources in"
  type        = string
  default     = "us-west1"
}

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
  "gke-subnet" = {
    name = "gke-subnet"
    cidr_range = "10.1.0.0/16"
    private_ip_google_access = true
}
  }
} 


variable "vpc_name" {
  description = "The name of the VPC network to create"
  type        = string
  default     = "my-vpc-network"
  
}

variable "network_id" {
  type = string
}