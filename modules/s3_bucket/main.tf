resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}
# resource "aws_s3_bucket" "bucket" {
#   for_each = var.bucket_names
#   bucket = each.key
# }
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}
resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  depends_on = [aws_s3_bucket_ownership_controls.bucket_ownership]
  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl
}

resource "aws_s3_bucket_lifecycle_configuration" "lifecycle_policy" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    id = "log"
    expiration {
      days = 60
    }
    status = "Enabled"
  }

}

############
###Object###
############

resource "aws_s3_bucket_object" "example_folder" {
  bucket   = aws_s3_bucket.bucket.id
  for_each = var.folders
  key      = each.key
}
