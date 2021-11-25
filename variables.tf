variable "parent_folder" {
  description = "Base folder ID for the rollout"
  type        = string
}

variable "domain" {
  description = "Domain name"
  type        = string
}

variable "iam_global_admin_group" {
  description = "group of users that should have admin rights globally "
  type        = string
}

variable "departments" {
  description = "list of departments with their owners"
  type        = map(any)
}

variable "teams" {
  description = "list of teams with their departments as parents"
  type        = map(any)
}

variable "products" {
  description = "list of products with their teams as parents"
  type        = map(any)
}