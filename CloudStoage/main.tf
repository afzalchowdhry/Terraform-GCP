provider "google" {
    project = "afzal-project"
    region = "us-central1"
    zone = "us-central1-a"
  
}

resource "google_storage_bucket" "GSC1" {
    name = "bucket-using-tfscript-afzal"
    location = "US"
}
