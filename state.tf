terraform {
  backend "s3" {
    bucket = "kdevops-terraform"
    key    = "aws-parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}