# Terraform settings
terraform {
  # Require the following providers
  required_providers {
    # Cloudflare provider used to interact with Cloudflare API
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.52"
    }

    # SOPS provider used to decrypt secrets
    sops = {
      source  = "carlpett/sops"
      version = "~> 1.1"
    }
  }

  # Require minimum Terraform version
  required_version = "~> 1.9"
}
