# Terraform settings
terraform {
  # Store state in a remote backend
  backend "s3" {
    # Bucket name
    bucket = "terraform"

    # Path to the state file in the bucket
    key = "terraform.tfstate"

    # Region of the bucket
    region = "eeur"

    # These are required, because it's actually Cloudflare R2, not AWS S3
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }

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
