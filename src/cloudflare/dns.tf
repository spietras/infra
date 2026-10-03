# Add record to verify domain ownership for ProtonMail
resource "cloudflare_dns_record" "protonmail_verification" {
  # Add a comment to the record
  comment = "This record is used to verify domain ownership for ProtonMail"

  # Content of the record
  content = "protonmail-verification=${var.secrets.dns.protonmail.challenge}"

  # Use root domain
  name = "@"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for ProtonMail (1)
resource "cloudflare_dns_record" "protonmail_mail_1" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for ProtonMail"

  # Content of the record
  content = "mail.protonmail.ch"

  # Use root domain
  name = "@"

  # Priority of the record
  priority = 10

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an MX record
  type = "MX"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for ProtonMail (2)
resource "cloudflare_dns_record" "protonmail_mail_2" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for ProtonMail"

  # Content of the record
  content = "mailsec.protonmail.ch"

  # Use root domain
  name = "@"

  # Priority of the record
  priority = 20

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an MX record
  type = "MX"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for SPF policy for ProtonMail
resource "cloudflare_dns_record" "protonmail_spf" {
  # Add a comment to the record
  comment = "This record is used to define SPF policy for ProtonMail"

  # Content of the record
  content = "v=spf1 include:_spf.protonmail.ch ~all"

  # Use root domain
  name = "@"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for ProtonMail (1)
resource "cloudflare_dns_record" "protonmail_dkim_1" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for ProtonMail"

  # Content of the record
  content = "protonmail.${var.secrets.dns.protonmail.dkim.domain}"

  # Use this subdomain
  name = "protonmail._domainkey"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for ProtonMail (2)
resource "cloudflare_dns_record" "protonmail_dkim_2" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for ProtonMail"

  # Content of the record
  content = "protonmail2.${var.secrets.dns.protonmail.dkim.domain}"

  # Use this subdomain
  name = "protonmail2._domainkey"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for ProtonMail (3)
resource "cloudflare_dns_record" "protonmail_dkim_3" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for ProtonMail"

  # Content of the record
  content = "protonmail3.${var.secrets.dns.protonmail.dkim.domain}"

  # Use this subdomain
  name = "protonmail3._domainkey"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DMARC policy for ProtonMail
resource "cloudflare_dns_record" "protonmail_dmarc" {
  # Add a comment to the record
  comment = "This record is used to define DMARC policy for ProtonMail"

  # Content of the record
  content = "v=DMARC1; p=quarantine;"

  # Use this subdomain
  name = "_dmarc"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record to verify domain ownership for SimpleLogin
resource "cloudflare_dns_record" "simplelogin_verification" {
  # Add a comment to the record
  comment = "This record is used to verify domain ownership for SimpleLogin"

  # Content of the record
  content = "sl-verification=${var.secrets.dns.simplelogin.challenge}"

  # Use mail domain
  name = "mail"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for SimpleLogin (1)
resource "cloudflare_dns_record" "simplelogin_mail_1" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for SimpleLogin"

  # Content of the record
  content = "mx1.simplelogin.co"

  # Use mail domain
  name = "mail"

  # Priority of the record
  priority = 10

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an MX record
  type = "MX"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for SimpleLogin (2)
resource "cloudflare_dns_record" "simplelogin_mail_2" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for SimpleLogin"

  # Content of the record
  content = "mx2.simplelogin.co"

  # Use mail domain
  name = "mail"

  # Priority of the record
  priority = 20

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an MX record
  type = "MX"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for SPF policy for SimpleLogin
resource "cloudflare_dns_record" "simplelogin_spf" {
  # Add a comment to the record
  comment = "This record is used to define SPF policy for SimpleLogin"

  # Content of the record
  content = "v=spf1 include:simplelogin.co ~all"

  # Use mail domain
  name = "mail"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for SimpleLogin (1)
resource "cloudflare_dns_record" "simplelogin_dkim_1" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for SimpleLogin"

  # Content of the record
  content = "dkim._domainkey.simplelogin.co"

  # Use mail domain
  name = "dkim._domainkey.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for SimpleLogin (2)
resource "cloudflare_dns_record" "simplelogin_dkim_2" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for SimpleLogin"

  # Content of the record
  content = "dkim02._domainkey.simplelogin.co"

  # Use mail domain
  name = "dkim02._domainkey.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for SimpleLogin (3)
resource "cloudflare_dns_record" "simplelogin_dkim_3" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for SimpleLogin"

  # Content of the record
  content = "dkim03._domainkey.simplelogin.co"

  # Use mail domain
  name = "dkim03._domainkey.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DMARC policy for SimpleLogin
resource "cloudflare_dns_record" "simplelogin_dmarc" {
  # Add a comment to the record
  comment = "This record is used to define DMARC policy for SimpleLogin"

  # Content of the record
  content = "v=DMARC1; p=quarantine; pct=100; adkim=s; aspf=s;"

  # Use mail domain
  name = "_dmarc.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for GitHub Pages verification
resource "cloudflare_dns_record" "github_pages_verification" {
  # Add a comment to the record
  comment = "This record is used to verify domain ownership for GitHub Pages"

  # Content of the record
  content = var.secrets.dns.github.pages.challenge

  # Use this subdomain
  name = "_github-pages-challenge-spietras"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is a TXT record
  type = "TXT"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for root domain to point to Cloudflare
resource "cloudflare_dns_record" "root" {
  # Add a comment to the record
  comment = "This record is used to point the root domain to Cloudflare"

  # This results in Cloudflare handling the traffic
  content = "192.0.2.1"

  # Use root domain
  name = "@"

  # Proxy through Cloudflare
  proxied = true

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for demo tunnel
resource "cloudflare_dns_record" "demo" {
  # Add a comment to the record
  comment = "This record is used to point to the demo tunnel"

  # Content of the record
  content = "${cloudflare_zero_trust_tunnel_cloudflared.demo.id}.cfargotunnel.com"

  # Use this subdomain
  name = local.domains.subdomains.tunnels.demo

  # Proxy through Cloudflare
  proxied = true

  # Use automatic TTL
  ttl = 1

  # This is a CNAME record
  type = "CNAME"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Xenon in Tailscale
resource "cloudflare_dns_record" "xenon" {
  # Add a comment to the record
  comment = "This record is used to point to Xenon in Tailscale"

  # IP address of Xenon in Tailscale
  content = "100.127.131.11"

  # Use this subdomain
  name = "xenon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Xenon wildcard in Tailscale
resource "cloudflare_dns_record" "xenon_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Xenon wildcard in Tailscale"

  # IP address of Xenon in Tailscale
  content = "100.127.131.11"

  # Use this subdomain
  name = "*.xenon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Neon in Tailscale
resource "cloudflare_dns_record" "neon" {
  # Add a comment to the record
  comment = "This record is used to point to Neon in Tailscale"

  # IP address of Neon in Tailscale
  content = "100.125.57.103"

  # Use this subdomain
  name = "neon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Neon wildcard in Tailscale
resource "cloudflare_dns_record" "neon_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Neon wildcard in Tailscale"

  # IP address of Neon in Tailscale
  content = "100.125.57.103"

  # Use this subdomain
  name = "*.neon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Carbon in Tailscale
resource "cloudflare_dns_record" "carbon" {
  # Add a comment to the record
  comment = "This record is used to point to Carbon in Tailscale"

  # IP address of Carbon in Tailscale
  content = "100.86.6.103"

  # Use this subdomain
  name = "carbon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Carbon wildcard in Tailscale
resource "cloudflare_dns_record" "carbon_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Carbon wildcard in Tailscale"

  # IP address of Carbon in Tailscale
  content = "100.86.6.103"

  # Use this subdomain
  name = "*.carbon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Kubernetes
resource "cloudflare_dns_record" "kubernetes" {
  # Add a comment to the record
  comment = "This record is used to point to Kubernetes"

  # IP address of Kubernetes
  content = "100.68.95.94"

  # Use this subdomain
  name = local.domains.subdomains.kubernetes

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Kubernetes wildcard
resource "cloudflare_dns_record" "kubernetes_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Kubernetes wildcard"

  # IP address of Kubernetes
  content = "100.68.95.94"

  # Use this subdomain
  name = "*.${local.domains.subdomains.kubernetes}"

  # Don't proxy through Cloudflare
  proxied = false

  # Use automatic TTL
  ttl = 1

  # This is an A record
  type = "A"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}
