# Add main zone
resource "cloudflare_zone" "main" {
  account = {
    # Identifier of the account to add the zone to
    id = cloudflare_account.main.id
  }

  # Domain of the zone
  name = local.domains.root
}

# Add DNSSEC to the zone
resource "cloudflare_zone_dnssec" "main" {
  # Identifier of the zone to add DNSSEC to
  zone_id = cloudflare_zone.main.id
}
