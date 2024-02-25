# Add main tunnel
resource "cloudflare_tunnel" "main" {
  # Identifier of the account to add the tunnel to
  account_id = cloudflare_account.main.id

  # Name of the tunnel
  name = "tunnel"

  # Password for the tunnel
  secret = var.secrets.tunnel.token
}
