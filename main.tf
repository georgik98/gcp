provider "google" {
  credentials = file("terraform-key.json")
  project = var.project
  region = var.region
  zone = var.zone
}

terraform {
  backend "gcs" {
    bucket = "terraformtest1-125453443"
    prefix = "terraform1"
    credentials = "terraform-key.json"
  }
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_network" "vpc_network2" {
  name = "terraform-network"
}