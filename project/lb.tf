module "load_balancer" {
  source       = "GoogleCloudPlatform/lb/google"
  version      = "2.0.0"
  region       = var.region
  name         = var.lb_name
  service_port = 80
  target_tags  = ["allow-lb-service"]
  network      = var.network
}