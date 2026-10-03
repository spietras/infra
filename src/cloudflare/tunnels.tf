# Add demo tunnel
resource "cloudflare_zero_trust_tunnel_cloudflared" "demo" {
  # Identifier of the account to add the tunnel to
  account_id = cloudflare_account.main.id

  # Whether the tunnel is configured locally or remotely
  config_src = "local"

  # Name of the tunnel
  name = "demo"

  # Secret for the tunnel
  tunnel_secret = var.secrets.tunnels.demo.secret
}
