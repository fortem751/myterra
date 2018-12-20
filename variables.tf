variable "environment" {
  type    = "string"
  default = "test"
}

variable "s3_bucket_prefix" {
  # default = "Super-Jo-s3-bucket"
  description = "Prefix of the s3 bucket"
  type        = "string"
}

variable "s3_regions" {
  type = "string"
}

locals {
  s3_tags = {
    created_by  = "terraform"
    environment = "${var.environment}"
  }
}
