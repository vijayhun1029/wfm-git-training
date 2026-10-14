resource "google_storage_bucket" "sfm_marketing_upload" {
  name                        = "your-unique-sfm-marketing-upload-bucket"
  location                    = "US"
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 30
    }

    action {
      type = "Delete"
    }
  }
}terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

resource "google_storage_bucket" "sfm_marketing_upload" {
  name                        = "your-unique-sfm-marketing-upload-bucket"
  location                    = "US"
  uniform_bucket_level_access = true
}
# SFM-102: SEP Actuals landing bucket
resource "google_storage_bucket" "sfm_sep_actuals" {
  name                        = "your-unique-sfm-sep-actuals-bucket"
  location                    = "US"
  uniform_bucket_level_access = true
}