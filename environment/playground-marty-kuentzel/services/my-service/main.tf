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
    prefix = "playground-marty-kuentzel/my-service"
  }
}

data "terraform_remote_state" "cloud_sql" {
  backend = "gcs"

  config = {
    bucket = "marty-terraform-state-bucket"
    prefix = "playground-marty-kuentzel/cloud-sql"
  }
}

module "my_service" {
  source = "../../../../modules/my-module"

  service            = "my-service"
  environment      = local.environment
  db_instance_name = data.terraform_remote_state.cloud_sql.outputs.database_instance.name
}
