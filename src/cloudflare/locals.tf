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
}
