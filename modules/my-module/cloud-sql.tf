resource "google_sql_database" "main" {
  name      = "test_db"
  instance  = var.db_instance_name
  charset   = "UTF8"
  collation = "en_US.UTF8"

}
