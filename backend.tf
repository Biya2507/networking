terraform {
  backend "s3" {
    bucket         = "biya-ca-netwoking"
    key            = "terraform/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}