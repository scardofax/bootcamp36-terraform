# Create a new Heroku UI
resource "heroku_app" "bootcamp36-ui" {
  name = "bootcamp36-ui"
  region = "us"
}