resource "google_compute_instance" "vm_instance" {
	name = "vm_name"
    zone  = var.zone
	machine_type = "f1-micro"
	boot_disk {
		initialize_params {
			image = "centos-7"
			}
	}
	network_interface {
		network = "default"
		access_config {
		}
	}
    metadata_startup_script = file("wordpress.sh")
	
	metadata = {
		ssh-keys = "user1:${file("~/.ssh/id_rsa.pub")}"
    }
}


#resource "google_compute_disk" "disk" {
 # name  = var.disk_name
 # type  = var.type
 # zone  = var.zone
 ## physical_block_size_bytes = 4096
#}

#resource "google_compute_attached_disk" "default" {
#	disk = google_compute_disk.disk.self_link
#	instance = google_compute_instance.vm_instance.self_link
#}