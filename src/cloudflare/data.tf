# Data source with account roles
data "cloudflare_account_roles" "account_roles" {
  account_id = cloudflare_account.main.id
}
