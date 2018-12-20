resource "aws_s3_bucket" "main" {
  bucket = "${var.s3_bucket_prefix}-${var.environment}-${var.s3_regions}"

  acl = "private"

  tags = "${local.s3_tags}"

  region = "${var.s3_regions}"
}
