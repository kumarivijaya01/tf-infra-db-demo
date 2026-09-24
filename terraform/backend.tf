terraform {
  required_version = ">= 1.3"
  backend "gcs" {
    bucket = "tf-state-cio-esr-np-1234456"
    prefix = "terraform/np"
  }
}