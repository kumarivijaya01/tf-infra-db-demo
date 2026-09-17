# IAM update for pgi-esr-st

resource "google_sql_user" "pgi-esr-st-iam-users" {
  for_each = var.env == "np" ? var.cloud_sql_iam_users : {}
  project  = var.project_id
  name     = each.key
  instance = module.pgi-esr-st.instance_name
  type     = each.value
}
