output "database_instance" {
  description = "Database instance information including name, version, connection name and readers if any."
  value       = {
    name          = google_sql_database_instance.main.name
    version       = google_sql_database_instance.main.database_version
    connection_name = google_sql_database_instance.main.connection_name
  }
}
