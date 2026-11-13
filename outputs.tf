output "campaign_lookup_id" {
  description = "Map of id values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.id }
}
output "campaign_lookup_campaign_type" {
  description = "Map of campaign_type values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.campaign_type }
}
output "campaign_lookup_created" {
  description = "Map of created values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.created }
}
output "campaign_lookup_created_by" {
  description = "Map of created_by values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.created_by }
}
output "campaign_lookup_description" {
  description = "Map of description values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.description }
}
output "campaign_lookup_last_updated" {
  description = "Map of last_updated values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.last_updated }
}
output "campaign_lookup_last_updated_by" {
  description = "Map of last_updated_by values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.last_updated_by }
}
output "campaign_lookup_name" {
  description = "Map of name values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.name }
}
output "campaign_lookup_notification_settings" {
  description = "Map of notification_settings values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.notification_settings }
}
output "campaign_lookup_principal_scope_settings" {
  description = "Map of principal_scope_settings values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.principal_scope_settings }
}
output "campaign_lookup_recurring_campaign_id" {
  description = "Map of recurring_campaign_id values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.recurring_campaign_id }
}
output "campaign_lookup_remediation_settings" {
  description = "Map of remediation_settings values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.remediation_settings }
}
output "campaign_lookup_resource_settings" {
  description = "Map of resource_settings values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.resource_settings }
}
output "campaign_lookup_reviewer_settings" {
  description = "Map of reviewer_settings values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.reviewer_settings }
}
output "campaign_lookup_schedule_settings" {
  description = "Map of schedule_settings values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.schedule_settings }
}
output "campaign_lookup_status" {
  description = "Map of status values across all campaign_lookup, keyed the same as var.campaign_lookup"
  value       = { for k, v in data.okta_campaign.campaign_lookup : k => v.status }
}

