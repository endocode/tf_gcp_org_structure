resource "google_folder" "departments" {
  for_each     = var.departments
  display_name = each.key
  parent       = var.parent_folder
}

resource "google_folder_iam_binding" "department_owner" {
  for_each = var.departments
  folder   = google_folder.departments[each.key].name
  role     = "roles/resourcemanager.folderAdmin"

  members = [
    try(each.value.owner, var.iam_global_admin_group)
  ]
}

resource "google_folder_iam_binding" "department_viewer" {
  for_each = var.departments
  folder   = google_folder.departments[each.key].name
  role     = "roles/resourcemanager.folderViewer"

  members = [
    "group:${each.key}@${var.domain}"
  ]
}

resource "google_folder" "teams" {
  for_each     = var.teams
  display_name = each.key
  parent       = google_folder.departments[each.value.parent].name
}

resource "google_folder_iam_binding" "team_owner" {
  for_each = var.teams
  folder   = google_folder.teams[each.key].name
  role     = "roles/resourcemanager.folderViewer"

  members = [
    try(each.value.owner, "group:${each.key}@${var.domain}")
  ]
}

resource "google_folder" "products" {
  for_each     = var.products
  display_name = each.key
  parent       = google_folder.teams[each.value.parent].name
}
