terraform {
  required_version = ">= 1.3"
  backend "gcs" {
    bucket = "tf-state-cio-esr-np-123456"
    prefix = "terraform/np"
  }
}