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

module "website" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 5.2.0"

  bucket_prefix = "terraform-provider-website-"

  tags = {
    Module = "s3-bucket"
  }
}
