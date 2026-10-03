# Terraform settings
terraform {
  # Require the following providers
  required_providers {
    # Cloudflare provider used to interact with Cloudflare API
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.22.0"
    }

    # SOPS provider used to decrypt secrets
    sops = {
      source  = "carlpett/sops"
      version = "~> 1.4.0"
    }
  }

  # Require Terraform version
  required_version = "~> 1.15.0"
}
