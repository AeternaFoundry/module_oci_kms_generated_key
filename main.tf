resource "oci_kms_generated_key" "kms_generated_keys" {
  for_each = var.kms_generated_keys

  crypto_endpoint       = each.value.crypto_endpoint
  include_plaintext_key = each.value.include_plaintext_key
  key_id                = each.value.key_id
  associated_data       = each.value.associated_data
  logging_context       = each.value.logging_context

  key_shape {
    algorithm = each.value.key_shape.algorithm
    curve_id  = each.value.key_shape.curve_id
    length    = each.value.key_shape.length
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

