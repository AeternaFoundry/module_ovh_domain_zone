output "domain_zones_id" {
  description = "Map of id values across all domain_zones, keyed the same as var.domain_zones except keys with no id are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.id if v.id != null && length(v.id) > 0 }
}
output "domain_zones_dnssec_supported" {
  description = "Map of dnssec_supported values across all domain_zones, keyed the same as var.domain_zones except keys with no dnssec_supported are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.dnssec_supported if v.dnssec_supported != null }
}
output "domain_zones_has_dns_anycast" {
  description = "Map of has_dns_anycast values across all domain_zones, keyed the same as var.domain_zones except keys with no has_dns_anycast are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.has_dns_anycast if v.has_dns_anycast != null }
}
output "domain_zones_last_update" {
  description = "Map of last_update values across all domain_zones, keyed the same as var.domain_zones except keys with no last_update are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.last_update if v.last_update != null && length(v.last_update) > 0 }
}
output "domain_zones_name" {
  description = "Map of name values across all domain_zones, keyed the same as var.domain_zones except keys with no name are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.name if v.name != null && length(v.name) > 0 }
}
output "domain_zones_name_servers" {
  description = "Map of name_servers values across all domain_zones, keyed the same as var.domain_zones except keys with no name_servers are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.name_servers if v.name_servers != null && length(v.name_servers) > 0 }
}
output "domain_zones_order" {
  description = "Map of order values across all domain_zones, keyed the same as var.domain_zones except keys with no order are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.order if v.order != null && length(v.order) > 0 }
}
output "domain_zones_ovh_subsidiary" {
  description = "Map of ovh_subsidiary values across all domain_zones, keyed the same as var.domain_zones except keys with no ovh_subsidiary are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.ovh_subsidiary if v.ovh_subsidiary != null && length(v.ovh_subsidiary) > 0 }
}
output "domain_zones_payment_mean" {
  description = "Map of payment_mean values across all domain_zones, keyed the same as var.domain_zones except keys with no payment_mean are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.payment_mean if v.payment_mean != null && length(v.payment_mean) > 0 }
}
output "domain_zones_plan" {
  description = "Map of plan values across all domain_zones, keyed the same as var.domain_zones except keys with no plan are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => one(v.plan) if v.plan != null && length(v.plan) > 0 }
}
output "domain_zones_plan_option" {
  description = "Map of plan_option values across all domain_zones, keyed the same as var.domain_zones except keys with no plan_option are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.plan_option if v.plan_option != null && length(v.plan_option) > 0 }
}
output "domain_zones_urn" {
  description = "Map of urn values across all domain_zones, keyed the same as var.domain_zones except keys with no urn are omitted"
  value       = { for k, v in ovh_domain_zone.domain_zones : k => v.urn if v.urn != null && length(v.urn) > 0 }
}

