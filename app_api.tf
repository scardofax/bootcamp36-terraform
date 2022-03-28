# Create a new Heroku API
resource "heroku_app" "bootcamp36-api" {
  name = "bootcamp36-api"
  region = "us"
}

# Create a database, and configure the app to use it
resource "heroku_addon" "database" {
  app_id = heroku_app.bootcamp36-api.id
  plan   = "heroku-postgresql:hobby-dev" 
}

resource "heroku_config" "config_db" {

    vars = {
        JDBC_DB_USER_NAME = var.db_username
    }
}

resource "heroku_app_config_association" "config_assoc" {
  app_id = heroku_app.bootcamp36-api.id

  vars = heroku_config.config_db.vars 
}

