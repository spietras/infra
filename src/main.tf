# Use Cloudflare module
module "cloudflare" {
  # Source of the module
  source = "./cloudflare/"

  # Pass secrets to the module
  secrets = local.secrets.cloudflare
}
