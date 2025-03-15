locals {
  project     = "playground-marty-kuentzel"
  region      = "europe-west1"
  environment = "test"
}

provider "google" {
  project = local.project
  region  = local.region
}

terraform {
  backend "gcs" {
    bucket = "marty-terraform-state-bucket"
    prefix = "playground-marty-kuentzel/cloud-sql"
  }
}

resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "POSTGRES_15"
  region           = "europe-west1"

  settings {
    tier = "db-f1-micro"
  }
}
