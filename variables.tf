variable "parent_folder" {
  description = "Base folder ID for the rollout"
  type        = string
}

variable "customer_id" {
  description = "the Customer ID of the cloud identity / GSuite account, https://support.google.com/a/answer/10070793?product_name=UnuFlow&hl=en&visit_id=637735135889309542-3932861521&rd=1&src=supportwidget0&hl=en"
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