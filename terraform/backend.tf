terraform {
  required_version = ">= 1.3"
  backend "gcs" {
    bucket = "tf-state-cio-esr-np-12345"
    prefix = "terraform/np"
  }
}