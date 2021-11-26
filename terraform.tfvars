parent_folder = "folders/12345"
domain        = "example.com"
customer_id   = "customers/XYZ"

iam_global_admin_group = "group:admins@example.com"

departments = {
  "online" = { owner = "group:online_lead@example.com" },
  "retail" = { owner = "group:retails_lead@example.com" },
  "other"  = { owner = "group:other_lead@example.com" }
}

teams = {
  "backend"    = { parent = "online" },
  "frontend"   = { parent = "online" },
  "ML"         = { parent = "retail", owner = "group:team_b@example.com" }, # set owner to override
  "production" = { parent = "retail" },
  "tech"       = { parent = "retail" },
  "service"    = { parent = "retail" }
}

products = {
  "webapp " = { parent = "frontend", },
  "shop"    = { parent = "backend" },
  "core"    = { parent = "ML" },
}     