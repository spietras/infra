# Create API token for managing DNS records
resource "cloudflare_api_token" "dns" {
  # Name of the token
  name = "dns"

  # Policy for the token
  policies = [
    {
      # Allow operations specified in the permission groups
      effect = "allow"

      # Policy permission groups
      permission_groups = [
        {
          # Write access to DNS records
          id = local.permissions.zone["DNS Write"]
        },
        {
          # Read access to zone settings
          id = local.permissions.zone["Zone Read"]
        }
      ]

      # Resources the token has access to
      resources = jsonencode({
        # Grant access to all resources in all zones
        "com.cloudflare.api.account.zone.*" = "*"
      })
    }
  ]
}
