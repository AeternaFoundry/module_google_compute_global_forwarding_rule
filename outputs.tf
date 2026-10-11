output "compute_global_forwarding_rules_id" {
  description = "Map of id values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no id are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_global_forwarding_rules_base_forwarding_rule" {
  description = "Map of base_forwarding_rule values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no base_forwarding_rule are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.base_forwarding_rule if v.base_forwarding_rule != null && length(v.base_forwarding_rule) > 0 }
}
output "compute_global_forwarding_rules_deletion_policy" {
  description = "Map of deletion_policy values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_global_forwarding_rules_description" {
  description = "Map of description values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no description are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_global_forwarding_rules_effective_labels" {
  description = "Map of effective_labels values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no effective_labels are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "compute_global_forwarding_rules_external_managed_backend_bucket_migration_state" {
  description = "Map of external_managed_backend_bucket_migration_state values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no external_managed_backend_bucket_migration_state are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.external_managed_backend_bucket_migration_state if v.external_managed_backend_bucket_migration_state != null && length(v.external_managed_backend_bucket_migration_state) > 0 }
}
output "compute_global_forwarding_rules_external_managed_backend_bucket_migration_testing_percentage" {
  description = "Map of external_managed_backend_bucket_migration_testing_percentage values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no external_managed_backend_bucket_migration_testing_percentage are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.external_managed_backend_bucket_migration_testing_percentage if v.external_managed_backend_bucket_migration_testing_percentage != null }
}
output "compute_global_forwarding_rules_forwarding_rule_id" {
  description = "Map of forwarding_rule_id values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no forwarding_rule_id are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.forwarding_rule_id if v.forwarding_rule_id != null }
}
output "compute_global_forwarding_rules_ip_address" {
  description = "Map of ip_address values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no ip_address are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "compute_global_forwarding_rules_ip_protocol" {
  description = "Map of ip_protocol values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no ip_protocol are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.ip_protocol if v.ip_protocol != null && length(v.ip_protocol) > 0 }
}
output "compute_global_forwarding_rules_ip_version" {
  description = "Map of ip_version values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no ip_version are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.ip_version if v.ip_version != null && length(v.ip_version) > 0 }
}
output "compute_global_forwarding_rules_label_fingerprint" {
  description = "Map of label_fingerprint values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "compute_global_forwarding_rules_labels" {
  description = "Map of labels values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no labels are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "compute_global_forwarding_rules_load_balancing_scheme" {
  description = "Map of load_balancing_scheme values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no load_balancing_scheme are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.load_balancing_scheme if v.load_balancing_scheme != null && length(v.load_balancing_scheme) > 0 }
}
output "compute_global_forwarding_rules_metadata_filters" {
  description = "Map of metadata_filters values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no metadata_filters are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.metadata_filters if v.metadata_filters != null && length(v.metadata_filters) > 0 }
}
output "compute_global_forwarding_rules_name" {
  description = "Map of name values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no name are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_global_forwarding_rules_network" {
  description = "Map of network values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no network are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.network if v.network != null && length(v.network) > 0 }
}
output "compute_global_forwarding_rules_network_tier" {
  description = "Map of network_tier values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no network_tier are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.network_tier if v.network_tier != null && length(v.network_tier) > 0 }
}
output "compute_global_forwarding_rules_no_automate_dns_zone" {
  description = "Map of no_automate_dns_zone values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no no_automate_dns_zone are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.no_automate_dns_zone if v.no_automate_dns_zone != null }
}
output "compute_global_forwarding_rules_port_range" {
  description = "Map of port_range values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no port_range are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.port_range if v.port_range != null && length(v.port_range) > 0 }
}
output "compute_global_forwarding_rules_project" {
  description = "Map of project values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no project are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_global_forwarding_rules_psc_connection_id" {
  description = "Map of psc_connection_id values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no psc_connection_id are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.psc_connection_id if v.psc_connection_id != null && length(v.psc_connection_id) > 0 }
}
output "compute_global_forwarding_rules_psc_connection_status" {
  description = "Map of psc_connection_status values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no psc_connection_status are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.psc_connection_status if v.psc_connection_status != null && length(v.psc_connection_status) > 0 }
}
output "compute_global_forwarding_rules_self_link" {
  description = "Map of self_link values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no self_link are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_global_forwarding_rules_service_directory_registrations" {
  description = "Map of service_directory_registrations values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no service_directory_registrations are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => one(v.service_directory_registrations) if v.service_directory_registrations != null && length(v.service_directory_registrations) > 0 }
}
output "compute_global_forwarding_rules_source_ip_ranges" {
  description = "Map of source_ip_ranges values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no source_ip_ranges are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.source_ip_ranges if v.source_ip_ranges != null && length(v.source_ip_ranges) > 0 }
}
output "compute_global_forwarding_rules_subnetwork" {
  description = "Map of subnetwork values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no subnetwork are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.subnetwork if v.subnetwork != null && length(v.subnetwork) > 0 }
}
output "compute_global_forwarding_rules_target" {
  description = "Map of target values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no target are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.target if v.target != null && length(v.target) > 0 }
}
output "compute_global_forwarding_rules_terraform_labels" {
  description = "Map of terraform_labels values across all compute_global_forwarding_rules, keyed the same as var.compute_global_forwarding_rules except keys with no terraform_labels are omitted"
  value       = { for k, v in google_compute_global_forwarding_rule.compute_global_forwarding_rules : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

