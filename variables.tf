variable "kms_generated_keys" {
  description = <<EOT
Map of kms_generated_keys, attributes below
Required:
    - crypto_endpoint
    - include_plaintext_key
    - key_id
    - key_shape (block):
        - algorithm (required)
        - curve_id (optional)
        - length (required)
Optional:
    - associated_data
    - logging_context
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    crypto_endpoint       = string
    include_plaintext_key = bool
    key_id                = string
    associated_data       = optional(map(string))
    logging_context       = optional(map(string))
    key_shape = object({
      algorithm = string
      curve_id  = optional(string)
      length    = number
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

