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

      # Subdomain for the main tunnel
      tunnel = "demo"
    }
  }

  # Map of role names to role IDs
  roles = {
    for role in data.cloudflare_account_roles.account_roles.roles : role.name => role.id
  }

  # Maps of permission group names to permission group IDs
  permissions = {
    # Account-level permissions
    account = data.cloudflare_api_token_permission_groups.permission_groups.account

    # User-level permissions
    user = data.cloudflare_api_token_permission_groups.permission_groups.user

    # Zone-level permissions
    zone = data.cloudflare_api_token_permission_groups.permission_groups.zone
  }
}
