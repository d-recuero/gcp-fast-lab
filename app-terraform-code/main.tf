# Application resources for the eCommerce frontend
resource "google_storage_bucket" "app_assets" {
  name          = "assets-ecommerce-dev-001"
  project       = "shop-frontend-dev"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true
}

# Frontend web server instance
resource "google_compute_instance" "web_server" {
  name         = "web-server-01"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"
  project      = "shop-frontend-dev"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # Network interface attached to the Shared VPC host project subnetwork
    subnetwork = "projects/net-dev-0/regions/europe-west1/subnetworks/frontend-subnet"
  }
}