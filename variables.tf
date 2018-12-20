variable "s3_bucket_prefix" {
  # default = "Super-Jo-s3-bucket"
  description = "Name of the s3 bucket"
  type = "string"
}

variable "s3_tags" {
  type = "map"

  default = {
      created_by = "terraform"
      environment = "Test"
  }
}

variable "s3_regions" {
  type = "list"
  default = ["us-east-1", "eu-central-1"]
}


