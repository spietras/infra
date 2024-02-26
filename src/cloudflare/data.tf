# Data source with account roles
data "cloudflare_account_roles" "account_roles" {
  account_id = cloudflare_account.main.id
}

# Data source with permissions groups for API tokens
data "cloudflare_api_token_permission_groups" "permission_groups" {}
