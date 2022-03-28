output "config_vars" {
  value = heroku_addon.database.config_var_values
  sensitive = true
}

output "name" {
  value = heroku_addon.database.name
}