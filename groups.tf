resource "google_cloud_identity_group" "group_department_viewers" {
  for_each             = var.departments
  display_name         = each.key
  initial_group_config = "WITH_INITIAL_OWNER"

  parent = var.customer_id

  group_key {
    id = "${each.key}@${var.domain}"
  }

  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}
