resource "aws_s3_bucket" "bad_bucket" {
  bucket = "bad_bucket1"
}

resource "aws_s3_bucket_versioning" "bad_bucket4" {
  bucket = aws_s3_bucket.bad_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
