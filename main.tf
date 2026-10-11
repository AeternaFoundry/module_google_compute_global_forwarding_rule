resource "google_compute_global_forwarding_rule" "compute_global_forwarding_rules" {
  for_each = var.compute_global_forwarding_rules

  name                                                         = each.value.name
  target                                                       = each.value.target
  deletion_policy                                              = each.value.deletion_policy
  description                                                  = each.value.description
  external_managed_backend_bucket_migration_state              = each.value.external_managed_backend_bucket_migration_state
  external_managed_backend_bucket_migration_testing_percentage = each.value.external_managed_backend_bucket_migration_testing_percentage
  ip_address                                                   = each.value.ip_address
  ip_protocol                                                  = each.value.ip_protocol
  ip_version                                                   = each.value.ip_version
  labels                                                       = each.value.labels
  load_balancing_scheme                                        = each.value.load_balancing_scheme
  network                                                      = each.value.network
  network_tier                                                 = each.value.network_tier
  no_automate_dns_zone                                         = each.value.no_automate_dns_zone
  port_range                                                   = each.value.port_range
  project                                                      = each.value.project
  source_ip_ranges                                             = each.value.source_ip_ranges
  subnetwork                                                   = each.value.subnetwork

  dynamic "metadata_filters" {
    for_each = each.value.metadata_filters != null ? each.value.metadata_filters : []
    content {
      dynamic "filter_labels" {
        for_each = metadata_filters.value.filter_labels
        content {
          name  = filter_labels.value.name
          value = filter_labels.value.value
        }
      }
      filter_match_criteria = metadata_filters.value.filter_match_criteria
    }
  }

  dynamic "service_directory_registrations" {
    for_each = each.value.service_directory_registrations != null ? [each.value.service_directory_registrations] : []
    content {
      namespace                = service_directory_registrations.value.namespace
      service_directory_region = service_directory_registrations.value.service_directory_region
    }
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

