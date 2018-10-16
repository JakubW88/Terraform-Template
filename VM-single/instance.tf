resource "google_compute_instance" "default" {
  project      = "terraform-219511"
  name         = "terraform01"
  machine_type = "n1-standard-1"
  zone         = "europe-west3-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}