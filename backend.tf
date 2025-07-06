terraform {
  backend "s3" {
    bucket         = "vardhanavprojectx"
    key            = "ec2-docker/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}