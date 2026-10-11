variable "compute_global_forwarding_rules" {
  description = <<EOT
Map of compute_global_forwarding_rules, attributes below
Required:
    - name
    - target
Optional:
    - deletion_policy
    - description
    - external_managed_backend_bucket_migration_state
    - external_managed_backend_bucket_migration_testing_percentage
    - ip_address
    - ip_protocol
    - ip_version
    - labels
    - load_balancing_scheme
    - network
    - network_tier
    - no_automate_dns_zone
    - port_range
    - project
    - source_ip_ranges
    - subnetwork
    - metadata_filters (block):
        - filter_labels (required, block):
            - name (required)
            - value (required)
        - filter_match_criteria (required)
    - service_directory_registrations (block):
        - namespace (optional)
        - service_directory_region (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                                                         = string
    target                                                       = string
    deletion_policy                                              = optional(string)
    description                                                  = optional(string)
    external_managed_backend_bucket_migration_state              = optional(string)
    external_managed_backend_bucket_migration_testing_percentage = optional(number)
    ip_address                                                   = optional(string)
    ip_protocol                                                  = optional(string)
    ip_version                                                   = optional(string)
    labels                                                       = optional(map(string))
    load_balancing_scheme                                        = optional(string)
    network                                                      = optional(string)
    network_tier                                                 = optional(string)
    no_automate_dns_zone                                         = optional(bool)
    port_range                                                   = optional(string)
    project                                                      = optional(string)
    source_ip_ranges                                             = optional(list(string))
    subnetwork                                                   = optional(string)
    metadata_filters = optional(list(object({
      filter_labels = list(object({
        name  = string
        value = string
      }))
      filter_match_criteria = string
    })))
    service_directory_registrations = optional(object({
      namespace                = optional(string)
      service_directory_region = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_global_forwarding_rules : (
        v.metadata_filters == null || alltrue([for item in v.metadata_filters : (length(item.filter_labels) >= 1 && length(item.filter_labels) <= 64)])
      )
    ])
    error_message = "Each filter_labels list must contain between 1 and 64 items"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

