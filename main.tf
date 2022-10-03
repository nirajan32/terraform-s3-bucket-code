provider "aws" {
  region = "us-east-1"
  access_key = "AKIATXT326VAXW4PS3S7"
  secret_key = "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"
}

#1 -this will create a S3 bucket in AWS
resource "aws_s3_bucket" "terraform_state_s3" {
  #make sure you give unique bucket name
  bucket = "terraform-teknobucket1-state-nire" 
  force_destroy = true
# Enable versioning to see full revision history of our state files
  versioning {
         enabled = true
        }

# Enable server-side encryption by default
server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}


