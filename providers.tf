terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
    backend "s3" {
        bucket = "remotews-tf-gh-actions"
        encrypt = true
        key = "terraform.tftstate"
        region = "us-east-1"
    }
}