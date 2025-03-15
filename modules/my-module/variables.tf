data "google_client_config" "current" {}

variable "service" {
  type        = string
  description = "Name of the Label that indicates the Service Name on every created GCP Ressource"
}

variable "environment" {
  type        = string
  description = "Specifies on which environment this service should run"
}

variable "db_instance_name" {
  type        = string
  description = "Name of database instance."
}
