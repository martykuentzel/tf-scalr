resource "google_pubsub_topic" "example_1" {
  name = "${var.service}-${var.environment}-1"

  labels = {
    environment = var.environment
    service     = var.service
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_topic" "example_2" {
  name = "${var.service}-${var.environment}-2"

  labels = {
    environment = var.environment
    service     = var.service
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_topic" "example_3" {
  name = "${var.service}-${var.environment}-3"

  labels = {
    environment = var.environment
    service     = var.service
  }

  message_retention_duration = "86600s"
}
