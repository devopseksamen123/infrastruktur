terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "heroku-terraform/terraform.tfstate"
    region = "eu-north-1"
  }
}

provider "opsgenie" {
  version = "0.2.3"
  api_url = "api.eu.opsgenie.com"
}