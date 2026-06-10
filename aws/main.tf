provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      Environment = "tutorial"
      Project     = "terraform-configure-providers"
    }
  }
}


resource "aws_s3_bucket" "example" {
  bucket_prefix = "terraform-provider-example-"
}
