variable "env"                     { type = string }
variable "project_id"              { type = string }
variable "project_name"            { type = string }
variable "project_number"          { type = string }
variable "region"                  { type = string }
variable "database_instance_name"  { type = string }
variable "database_instance_tier"  { type = string }
variable "database_availability"   { type = string }
variable "database_name"           { type = string }
variable "database_version"        { type = string }
variable "database_edition"        { type = string }
variable "disk_autoresize"         { type = bool }
variable "disk_autoresize_limit"   { type = number }
variable "ssl_mode"                { type = string }
variable "deletion_protection"     { type = bool }
variable "consumer_network"        { type = string }
variable "allowed_consumer_projects" { type = list(string) }
variable "cloud_sql_iam_users"     { type = map(string); default = {} }
variable "database_migration_serviceaccount" { type = string; default = "" }
variable "database_instance_flags" { type = map(map(string)); default = {} }