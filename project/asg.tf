resource "google_compute_autoscaler" "asg" {
  provider = google-beta
  zone   = var.zone
  name   = var.asg_name
  target = google_compute_instance_group_manager.asg.self_link
  autoscaling_policy {
    max_replicas    = var.max_replicas
    min_replicas    = var.min_replicas
    cooldown_period = var.cooldown_period
    cpu_utilization {
      target = var.cpu_target
    }
  }
}

resource "google_compute_target_pool" "target_pool" {
  provider = google-beta
  region = var.region  
  name = var.targetpool_name
}

resource "google_compute_instance_group_manager" "instance_manager" {
  provider = google-beta

  name = var.instance_group_manager
  zone = var.zone

  version {
    instance_template = google_compute_instance_template.instance_manager.self_link
    name              = "primary"
  }

  target_pools       = [google_compute_target_pool.self_link]
  base_instance_name = "autoscaler_base_name"
}

resource "google_compute_instance" "asg" {

  name         = var.asg_name
  zone         = var.zone


  tags = ["foo", "bar"]


  disk {
    source_image = data.google_compute_image.centos_7.self_link
  }

  network_interface {

    network = google_compute_network.vpc.id
    access_config {
    }
  }
}

data "google_compute_image" "centos_7" {
    provider = google-beta
    family = "centos-7"
    project = "centos-cloud"
}