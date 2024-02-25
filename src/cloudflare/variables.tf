# Declare variable for secrets
variable "secrets" {
  # Description of the variable
  description = "Secrets for the Cloudflare module"

  # Mark the variable as sensitive
  sensitive = true

  # Type of the variable
  type = object({
    dns = object({
      github = object({
        pages = object({
          challenge = string
        })
      })

      protonmail = object({
        challenge = string

        dkim = object({
          domain = string
        })
      })

      simplelogin = object({
        challenge = string
      })
    })

    tunnel = object({
      token = string
    })
  })
}
