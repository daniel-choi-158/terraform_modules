resource "google_compute_instance" "test_server" {
  name         = var.server_name
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    #TODO: change to my custom VPC network later
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    name = "my instance"
  }

  #TODO
  metadata_startup_script = "echo hi > /test.txt"
  /*
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
  */
}

