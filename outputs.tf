output "kms_generated_keys_id" {
  description = "Map of id values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no id are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_generated_keys_associated_data" {
  description = "Map of associated_data values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no associated_data are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.associated_data if v.associated_data != null && length(v.associated_data) > 0 }
}
output "kms_generated_keys_ciphertext" {
  description = "Map of ciphertext values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no ciphertext are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.ciphertext if v.ciphertext != null && length(v.ciphertext) > 0 }
}
output "kms_generated_keys_crypto_endpoint" {
  description = "Map of crypto_endpoint values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no crypto_endpoint are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.crypto_endpoint if v.crypto_endpoint != null && length(v.crypto_endpoint) > 0 }
}
output "kms_generated_keys_include_plaintext_key" {
  description = "Map of include_plaintext_key values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no include_plaintext_key are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.include_plaintext_key if v.include_plaintext_key != null }
}
output "kms_generated_keys_key_id" {
  description = "Map of key_id values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no key_id are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_generated_keys_key_shape" {
  description = "Map of key_shape values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no key_shape are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => one(v.key_shape) if v.key_shape != null && length(v.key_shape) > 0 }
}
output "kms_generated_keys_logging_context" {
  description = "Map of logging_context values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no logging_context are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.logging_context if v.logging_context != null && length(v.logging_context) > 0 }
}
output "kms_generated_keys_plaintext" {
  description = "Map of plaintext values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no plaintext are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
}
output "kms_generated_keys_plaintext_checksum" {
  description = "Map of plaintext_checksum values across all kms_generated_keys, keyed the same as var.kms_generated_keys except keys with no plaintext_checksum are omitted"
  value       = { for k, v in oci_kms_generated_key.kms_generated_keys : k => v.plaintext_checksum if v.plaintext_checksum != null && length(v.plaintext_checksum) > 0 }
}

