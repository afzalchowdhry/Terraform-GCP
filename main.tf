resource "google_storage_bucket" "GCS1" {
    name = "second-jenkins-bucket-using-tfscript-afzal"
    location = "US"  
    storage_class = "NEARLINE" #Default it would be STANDARD
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
