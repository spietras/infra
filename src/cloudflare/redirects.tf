# Add a ruleset to redirect requests for the root domain to another URL
resource "cloudflare_ruleset" "redirect_root" {
  # Description of the ruleset
  description = "Redirect requests for the root domain to another URL"

  # This ruleset applies to the zone
  kind = "zone"

  # The name of the ruleset
  name = "Redirect root domain"

  # This ruleset is applied when evaluating redirects for HTTP requests
  phase = "http_request_dynamic_redirect"

  # Rules to apply to the ruleset
  rules {
    # Perform a redirect
    action = "redirect"

    # Parameters for the redirect action
    action_parameters {
      # Use a value to lookup information for the action
      from_value {
        # Preserve the query string when redirecting
        preserve_query_string = true

        # Use a 301 status code for permanent redirects
        status_code = 301

        # Redirect to this URL
        target_url {
          # Use my GitHub profile as the target URL
          value = "https://github.com/spietras"
        }
      }
    }

    # Description of the rule
    description = "Redirect requests for the root domain to another URL"

    # Enable the rule
    enabled = true

    # Use the rule on requests to spietras.dev
    expression = "(http.host eq \"${local.domains.root}\")"
  }

  # Identifier of the zone to apply the ruleset to
  zone_id = cloudflare_zone.main.id
}
