# Use Cloudflare provider
provider "cloudflare" {
  # API token to use for Cloudflare API requests
  api_token = local.secrets.cloudflare.api.token
}
