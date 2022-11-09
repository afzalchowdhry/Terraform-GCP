resource "google_storage_bucket" "GCS1" {
    name = "bucket-using-tfscript-afzal-test"
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
    source = "C:/Users/002VH4744/Documents/Time_Tracking.png"
    bucket = google_storage_bucket.GCS1.name
  
}
