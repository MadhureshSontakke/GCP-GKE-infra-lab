variable "cluster_name" {
    type = string
    default = "gke-cluster"
  
}

variable "region" {
    type = string
    default = "us-east4"
  
}

variable "network_id" {
    type = string
  
}

variable "subnet" {
    type = string
  
}
variable "node_count" {
    type = number
  
}
variable "machine_type" {
type = string
default = "n2-standard-2" 
}