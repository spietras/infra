# Add demo tunnel
resource "cloudflare_zero_trust_tunnel_cloudflared" "demo" {
  # Identifier of the account to add the tunnel to
  account_id = cloudflare_account.main.id

  # Name of the tunnel
  name = "demo"

  # Secret for the tunnel
  secret = var.secrets.tunnels.demo.secret
}
