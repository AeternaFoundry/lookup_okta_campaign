output "campaign_lookup_id" {
  description = "Map of id values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "campaign_lookup_campaign_type" {
  description = "Map of campaign_type values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no campaign_type are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.campaign_type if v.campaign_type != null && length(v.campaign_type) > 0 }
}
output "campaign_lookup_created" {
  description = "Map of created values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no created are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.created if v.created != null && length(v.created) > 0 }
}
output "campaign_lookup_created_by" {
  description = "Map of created_by values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no created_by are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "campaign_lookup_description" {
  description = "Map of description values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no description are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "campaign_lookup_last_updated" {
  description = "Map of last_updated values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no last_updated are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.last_updated if v.last_updated != null && length(v.last_updated) > 0 }
}
output "campaign_lookup_last_updated_by" {
  description = "Map of last_updated_by values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no last_updated_by are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.last_updated_by if v.last_updated_by != null && length(v.last_updated_by) > 0 }
}
output "campaign_lookup_name" {
  description = "Map of name values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no name are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "campaign_lookup_notification_settings" {
  description = "Map of notification_settings values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no notification_settings are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.notification_settings if v.notification_settings != null && length(v.notification_settings) > 0 }
}
output "campaign_lookup_principal_scope_settings" {
  description = "Map of principal_scope_settings values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no principal_scope_settings are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.principal_scope_settings if v.principal_scope_settings != null && length(v.principal_scope_settings) > 0 }
}
output "campaign_lookup_recurring_campaign_id" {
  description = "Map of recurring_campaign_id values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no recurring_campaign_id are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.recurring_campaign_id if v.recurring_campaign_id != null && length(v.recurring_campaign_id) > 0 }
}
output "campaign_lookup_remediation_settings" {
  description = "Map of remediation_settings values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no remediation_settings are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.remediation_settings if v.remediation_settings != null && length(v.remediation_settings) > 0 }
}
output "campaign_lookup_resource_settings" {
  description = "Map of resource_settings values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no resource_settings are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.resource_settings if v.resource_settings != null && length(v.resource_settings) > 0 }
}
output "campaign_lookup_reviewer_settings" {
  description = "Map of reviewer_settings values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no reviewer_settings are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.reviewer_settings if v.reviewer_settings != null && length(v.reviewer_settings) > 0 }
}
output "campaign_lookup_schedule_settings" {
  description = "Map of schedule_settings values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no schedule_settings are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.schedule_settings if v.schedule_settings != null && length(v.schedule_settings) > 0 }
}
output "campaign_lookup_status" {
  description = "Map of status values across all campaign_lookup, keyed the same as var.campaign_lookup except keys with no status are omitted"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}

