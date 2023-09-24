resource "google_compute_network" "vpc" {
  name = var.vpc_name
  routing_mode = "GLOBAL"
  auto_create_subnetworks = "true"

}