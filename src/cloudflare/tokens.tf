# Create API token for managing DNS records
resource "cloudflare_api_token" "dns" {
  # Name of the token
  name = "dns"

  # Policy for the token
  policy {
    permission_groups = [
      # Write access to DNS records
      local.permissions.zone["DNS Write"],

      # Read access to zone settings
      local.permissions.zone["Zone Read"],
    ]

    # Resources the token has access to
    resources = {
      # Grant access to all resources in all zones
      "com.cloudflare.api.account.zone.*" = "*"
    }
  }
}
