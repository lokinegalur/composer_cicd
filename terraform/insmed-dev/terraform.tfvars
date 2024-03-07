
project_name = "prj-diameterhealth-working"
region       = "us-central1"

ComputeEngine = [{
  instance_name = "q-insmed-instance"
  machine_type  = "custom-8-53248" #Custom machine types can be formatted as custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB 52GB => 53248MB
  zone          = "us-central1-b"
  # image         = "c0-deeplearning-common-cu113-v20230925-debian-10" 
  image = "projects/ml-images/global/images/c0-deeplearning-common-cu113-v20230925-debian-10"
  labels = {
    environment = "dev"
  }
  network_name      = "vpc-on-prem"
  subnet_name       = "vpc-on-prem-us-central1"
  accelerator_type  = "nvidia-tesla-v100"
  accelerator_count = 1
  # startup_script = <<-EOF
  #       #!/bin/bash
  #         apt-get update
  #         apt-get install -y nginx
  #         systemctl start nginx"

  #         EOF
}]


