terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "heroku-terraform/terraform.tfstate"
    region = "eu-north-1"
  }
}