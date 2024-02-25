# Add main account
resource "cloudflare_account" "main" {
  # Name of the account
  name = local.account.name
}

# Add me as a member to the account
resource "cloudflare_account_member" "spietras" {
  # Identifier of the account to add the member to
  account_id = cloudflare_account.main.id

  # Email address of the member
  email_address = local.account.members.spietras.email

  # Role IDs to assign to the member
  role_ids = [
    local.roles["Super Administrator - All Privileges"],
  ]

  # Member is accepted
  status = "accepted"
}
