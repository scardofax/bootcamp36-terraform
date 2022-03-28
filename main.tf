terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "5.0.1"
    }
  }

  backend "pg" {
  }

}

provider "heroku" {
  # Configuration options
}
