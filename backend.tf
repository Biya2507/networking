terraform {
  backend "s3" {
    bucket         = "networking-ca1-20065124"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
