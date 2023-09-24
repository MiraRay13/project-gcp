resource "google_sql_database_instance" "db_instance" {
  provider = google-beta

  name                = var.db_instance_name
  region              = var.region
  database_version    = var.database_version
  deletion_protection = false
  project             = var.project_name
  root_password       = var.db_password

  settings {
    tier = var.tier

    ip_configuration {
      ipv4_enabled = true
    
      authorized_networks {
        value = "0.0.0.0/0"
        name  = var.sql_username
      }
    }
  }
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "sql_users" {
  name     = var.sql_username
  instance = google_sql_database_instance.sql_users.name
  host     = var.host
  password = var.user_password

}