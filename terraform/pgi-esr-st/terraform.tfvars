env = "np"

project_id = "cio-esr-np-123456"

project_name = "cio-esr-np"

project_number = "23456789"

region = "northamerica-northeast1"
database_instance_name    = "pgi-esr-st"
database_instance_tier    = "db-perf-optimized-N-2"
database_availability     = "REGIONAL"
database_name             = "pg-esr-st"
database_version          = "POSTGRES_18"
database_edition          = "ENTERPRISE_PLUS"
disk_autoresize           = true
cloud_sql_iam_users = {
  "dldbmigrationgcp@telus.com" = "CLOUD_IAM_GROUP",
  "dldbmigrationgcp-devops@telus.com" = "CLOUD_IAM_GROUP",
  "dl_clouddba@telus.com" = "CLOUD_IAM_GROUP",
  "compute-instance@gidc-dba-tools-np-32b0f0.iam" = "CLOUD_IAM_SERVICE_ACCOUNT"
}
disk_autoresize_limit     = 1000
ssl_mode            = "ENCRYPTED_ONLY"
database_migration_serviceaccount = "compute-instance@gidc-dba-tools-np-32b0f0.iam.gserviceaccount.com"
consumer_network          = "projects/cdo-cloud-vpc-host-np-d48ee6/global/networks/cloud-svc-network-np"
deletion_protection = true
allowed_consumer_projects = ["cio-esr-np-123456","gidc-dba-tools-np-32b0f0","svc-transit-vpc-pr-811269"]
database_instance_flags   = {
  "pg-esr-flags" = {
    "cloudsql.iam_authentication" = "on"
    "max_connections" = "3000"
    "max_prepared_transactions" = "300"
    "cloudsql.enable_pgaudit" = "on"
    "log_connections" = "on"
    "log_disconnections" = "on"
    "pgaudit.log" = "all"
    "cloudsql.enable_auto_explain" = "on"
    }
}