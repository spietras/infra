# Data source with decrypted secrets
data "sops_file" "secrets" {
  # Path to the encrypted file
  source_file = "secrets.yaml"
}
