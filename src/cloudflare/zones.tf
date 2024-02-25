# Add main zone
resource "cloudflare_zone" "main" {
  # Identifier of the account to add the zone to
  account_id = cloudflare_account.main.id

  # Use the free plan
  plan = "free"

  # Domain of the zone
  zone = local.domains.root
}

# Add DNSSEC to the zone
resource "cloudflare_zone_dnssec" "main" {
  # Identifier of the zone to add DNSSEC to
  zone_id = cloudflare_zone.main.id
}
