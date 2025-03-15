resource "google_secret_manager_secret" "secret" {
  secret_id = "${var.service}-${var.environment}"

  labels = {
    environment = var.environment
    service     = var.service
  }

  replication {
    auto {}
  }
}
