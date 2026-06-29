terraform {
  backend "gcs" {
    bucket = "terraform-backend-2099-5"
    prefix = "terraform/prod/state"
    # Point the backend to the same service account credentials file (literal path required)
    # credentials = "creds.json"
  }
}
