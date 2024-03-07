
resource "google_compute_instance" "my_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      labels = var.labels
    }
  }
   guest_accelerator {
    type = var.accelerator_type
    count = var.accelerator_count
   }
    network_interface {
        network = var.network_name
        subnetwork = var.subnet_name 
    }
    scheduling {
    preemptible        = false
    automatic_restart  = true
    on_host_maintenance = "TERMINATE"  # Disable live migration
  }
    metadata_startup_script = var.startup_script

  }
