# Local variables to use in this module
locals {
  # Decrypted secrets
  secrets = yamldecode(data.sops_file.secrets.raw)
}
