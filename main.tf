provider "aws" {
    region           = "us-east-2"
    access_key  = "AKIA5QMSYXFQMSJ4ZI23"
    secret_key   = "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"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "test_bucket"
  acl = "private"
}