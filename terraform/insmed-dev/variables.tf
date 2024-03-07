variable "project_name" {
  type        = string
  description = "Name of the GCP project"
}

variable "region" {
  type        = string
  description = "Name of the region"
}


variable "ComputeEngine" {
  type = list(object({
    instance_name  = string
    machine_type   = string
    zone           = optional(string)
    image          = optional(string)
    labels         = optional(map(string))
    network_name   = optional(string)
    subnet_name    = optional(string)
    startup_script = optional(string)
    # guest_accelerator = optional(object({
    #   type = string 
    #   count = number
    # }))
    accelerator_type  = optional(string)
    accelerator_count = optional(number)
  }))
}