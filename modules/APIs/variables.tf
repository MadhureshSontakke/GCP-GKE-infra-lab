variable "project_id" {
  description = "The GCP project to deploy resources in"
  type        = string
  # default     = "qwiklabs-gcp-01-4ab904757393"
  
}
variable "apis" {
  description = "List of APIs to enable"
  type        = list(string)
  default     = [
                "compute.googleapis.com", 
                "iam.googleapis.com", 
                "container.googleapis.com", 
                "logging.googleapis.com", 
                "monitoring.googleapis.com",
                "secretmanager.googleapis.com",
  ] 
}