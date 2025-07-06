terraform {
  backend "s3" {
    bucket         = "biya2507"
    key            = "terraform/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}