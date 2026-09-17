terraform {
  required_version = ">= 1.3"
  backend "gcs" {
    bucket = "tf-state-cio-esr-np12345"
    prefix = "terraform/np"
  }
}