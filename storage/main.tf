resource "google_storage_bucket" "GCS1" {
    name = "jenkins-github-bucket-tfscript-afzal-test"
    location = "US"  
    storage_class = "NEARLINE"
    labels = {
      "env" = "test"
      "dept" = "it"
    }

    lifecycle_rule {
      condition {
        age = 1
      }
      action {
        type = "Delete"
      }
    }
}

resource "google_storage_bucket_object" "object" {
    name = "Time_Tracking"
    source = "time.jpeg"
    bucket = google_storage_bucket.GCS1.name
  
}
