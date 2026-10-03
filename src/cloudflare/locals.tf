# Local variables to use in this module
locals {
  account = {
    # Name of the account
    name = "spietras"

    # Members of the account
    members = {
      spietras = {
        # Email address of the member
        email = "cloudflare@mail.spietras.dev"
      }
    }
  }

  domains = {
    # Root domain
    root = "spietras.dev"

    subdomains = {
      # Subdomain for Kubernetes
      kubernetes = "k8s"

      # Subdomain for Tailscale
      tailscale = "ts"

      tunnels = {
        # Subdomain for demo tunnel
        demo = "demo"
      }
    }
  }

  # Map of role names to role IDs
  roles = {
    for role in data.cloudflare_account_roles.account_roles.result : role.name => role.id
  }

  # Map of permission group names to permission group IDs
  permissions = {
    # Zone permissions
    zone = {
      for permission in data.cloudflare_api_token_permission_groups_list.zone_permission_groups.result : permission.name => permission.id
    }
  }
}
