terraform {
  required_version = ">= 1.3"
  backend "gcs" {
    bucket = "tf-state-cio-esr-np1234455"
    prefix = "terraform/np"
  }
}