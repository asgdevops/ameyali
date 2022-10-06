#
# Create a AWS S3 bucket  
#
resource "aws_s3_bucket" "b" {
  bucket = "ameyali-notebook-store-s3"
}

resource "aws_s3_bucket_acl" "c" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}