# Add record to verify domain ownership for ProtonMail
resource "cloudflare_record" "protonmail_verification" {
  # Add a comment to the record
  comment = "This record is used to verify domain ownership for ProtonMail"

  # Use root domain
  name = "@"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = "protonmail-verification=${var.secrets.dns.protonmail.challenge}"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for ProtonMail (1)
resource "cloudflare_record" "protonmail_mail_1" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for ProtonMail"

  # Use root domain
  name = "@"

  # Priority of the record
  priority = 10

  # Don't proxy through Cloudflare
  proxied = false

  # This is an MX record
  type = "MX"

  # Content of the record
  content = "mail.protonmail.ch"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for ProtonMail (2)
resource "cloudflare_record" "protonmail_mail_2" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for ProtonMail"

  # Use root domain
  name = "@"

  # Priority of the record
  priority = 20

  # Don't proxy through Cloudflare
  proxied = false

  # This is an MX record
  type = "MX"

  # Content of the record
  content = "mailsec.protonmail.ch"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for SPF policy for ProtonMail
resource "cloudflare_record" "protonmail_spf" {
  # Add a comment to the record
  comment = "This record is used to define SPF policy for ProtonMail"

  # Use root domain
  name = "@"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = "v=spf1 include:_spf.protonmail.ch ~all"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for ProtonMail (1)
resource "cloudflare_record" "protonmail_dkim_1" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for ProtonMail"

  # Use this subdomain
  name = "protonmail._domainkey"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "protonmail.${var.secrets.dns.protonmail.dkim.domain}"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for ProtonMail (2)
resource "cloudflare_record" "protonmail_dkim_2" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for ProtonMail"

  # Use this subdomain
  name = "protonmail2._domainkey"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "protonmail2.${var.secrets.dns.protonmail.dkim.domain}"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for ProtonMail (3)
resource "cloudflare_record" "protonmail_dkim_3" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for ProtonMail"

  # Use this subdomain
  name = "protonmail3._domainkey"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "protonmail3.${var.secrets.dns.protonmail.dkim.domain}"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DMARC policy for ProtonMail
resource "cloudflare_record" "protonmail_dmarc" {
  # Add a comment to the record
  comment = "This record is used to define DMARC policy for ProtonMail"

  # Use this subdomain
  name = "_dmarc"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = "v=DMARC1; p=quarantine;"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record to verify domain ownership for SimpleLogin
resource "cloudflare_record" "simplelogin_verification" {
  # Add a comment to the record
  comment = "This record is used to verify domain ownership for SimpleLogin"

  # Use mail domain
  name = "mail"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = "sl-verification=${var.secrets.dns.simplelogin.challenge}"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for SimpleLogin (1)
resource "cloudflare_record" "simplelogin_mail_1" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for SimpleLogin"

  # Use mail domain
  name = "mail"

  # Priority of the record
  priority = 10

  # Don't proxy through Cloudflare
  proxied = false

  # This is an MX record
  type = "MX"

  # Content of the record
  content = "mx1.simplelogin.co"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for mail server for SimpleLogin (2)
resource "cloudflare_record" "simplelogin_mail_2" {
  # Add a comment to the record
  comment = "This record is used to point to a mail server for SimpleLogin"

  # Use mail domain
  name = "mail"

  # Priority of the record
  priority = 20

  # Don't proxy through Cloudflare
  proxied = false

  # This is an MX record
  type = "MX"

  # Content of the record
  content = "mx2.simplelogin.co"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for SPF policy for SimpleLogin
resource "cloudflare_record" "simplelogin_spf" {
  # Add a comment to the record
  comment = "This record is used to define SPF policy for SimpleLogin"

  # Use mail domain
  name = "mail"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = "v=spf1 include:simplelogin.co ~all"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for SimpleLogin (1)
resource "cloudflare_record" "simplelogin_dkim_1" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for SimpleLogin"

  # Use mail domain
  name = "dkim._domainkey.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "dkim._domainkey.simplelogin.co"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for SimpleLogin (2)
resource "cloudflare_record" "simplelogin_dkim_2" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for SimpleLogin"

  # Use mail domain
  name = "dkim02._domainkey.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "dkim02._domainkey.simplelogin.co"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DKIM policy for SimpleLogin (3)
resource "cloudflare_record" "simplelogin_dkim_3" {
  # Add a comment to the record
  comment = "This record is used to define DKIM policy for SimpleLogin"

  # Use mail domain
  name = "dkim03._domainkey.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "dkim03._domainkey.simplelogin.co"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for DMARC policy for SimpleLogin
resource "cloudflare_record" "simplelogin_dmarc" {
  # Add a comment to the record
  comment = "This record is used to define DMARC policy for SimpleLogin"

  # Use mail domain
  name = "_dmarc.mail"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = "v=DMARC1; p=quarantine; pct=100; adkim=s; aspf=s;"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for GitHub Pages verification
resource "cloudflare_record" "github_pages_verification" {
  # Add a comment to the record
  comment = "This record is used to verify domain ownership for GitHub Pages"

  # Use this subdomain
  name = "_github-pages-challenge-spietras"

  # Don't proxy through Cloudflare
  proxied = false

  # This is a TXT record
  type = "TXT"

  # Content of the record
  content = var.secrets.dns.github.pages.challenge

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for root domain to point to Cloudflare
resource "cloudflare_record" "root" {
  # Add a comment to the record
  comment = "This record is used to point the root domain to Cloudflare"

  # Use root domain
  name = "@"

  # Proxy through Cloudflare
  proxied = true

  # This is an A record
  type = "A"

  # This results in Cloudflare handling the traffic
  content = "192.0.2.1"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for tunnel
resource "cloudflare_record" "tunnel" {
  # Add a comment to the record
  comment = "This record is used to point to a tunnel"

  # Use this subdomain
  name = local.domains.subdomains.tunnel

  # Proxy through Cloudflare
  proxied = true

  # This is a CNAME record
  type = "CNAME"

  # Content of the record
  content = "${cloudflare_zero_trust_tunnel_cloudflared.main.id}.cfargotunnel.com"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Xenon in Tailscale
resource "cloudflare_record" "xenon" {
  # Add a comment to the record
  comment = "This record is used to point to Xenon in Tailscale"

  # Use this subdomain
  name = "xenon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Xenon in Tailscale
  content = "100.127.131.11"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Xenon wildcard in Tailscale
resource "cloudflare_record" "xenon_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Xenon wildcard in Tailscale"

  # Use this subdomain
  name = "*.xenon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Xenon in Tailscale
  content = "100.127.131.11"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Oxygen in Tailscale
resource "cloudflare_record" "oxygen" {
  # Add a comment to the record
  comment = "This record is used to point to Oxygen in Tailscale"

  # Use this subdomain
  name = "oxygen.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Oxygen in Tailscale
  content = "100.119.51.47"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Oxygen wildcard in Tailscale
resource "cloudflare_record" "oxygen_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Oxygen wildcard in Tailscale"

  # Use this subdomain
  name = "*.oxygen.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Oxygen in Tailscale
  content = "100.119.51.47"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Carbon in Tailscale
resource "cloudflare_record" "carbon" {
  # Add a comment to the record
  comment = "This record is used to point to Carbon in Tailscale"

  # Use this subdomain
  name = "carbon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Carbon in Tailscale
  content = "100.86.6.103"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Carbon wildcard in Tailscale
resource "cloudflare_record" "carbon_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Carbon wildcard in Tailscale"

  # Use this subdomain
  name = "*.carbon.${local.domains.subdomains.tailscale}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Carbon in Tailscale
  content = "100.86.6.103"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Kubernetes
resource "cloudflare_record" "kubernetes" {
  # Add a comment to the record
  comment = "This record is used to point to Kubernetes"

  # Use this subdomain
  name = local.domains.subdomains.kubernetes

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Kubernetes
  content = "100.68.95.94"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}

# Add record for Kubernetes wildcard
resource "cloudflare_record" "kubernetes_wildcard" {
  # Add a comment to the record
  comment = "This record is used to point to Kubernetes wildcard"

  # Use this subdomain
  name = "*.${local.domains.subdomains.kubernetes}"

  # Don't proxy through Cloudflare
  proxied = false

  # This is an A record
  type = "A"

  # IP address of Kubernetes
  content = "100.68.95.94"

  # Identifier of the zone to add the record to
  zone_id = cloudflare_zone.main.id
}
