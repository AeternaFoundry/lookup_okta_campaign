data "okta_campaign" "campaign_lookup" {
  for_each = var.campaign_lookup

  campaign_type = each.value.campaign_type
  description   = each.value.description

  dynamic "remediation_settings" {
    for_each = each.value.remediation_settings != null ? each.value.remediation_settings : []
    content {
      dynamic "auto_remediation_settings" {
        for_each = remediation_settings.value.auto_remediation_settings != null ? remediation_settings.value.auto_remediation_settings : []
        content {
          include_all_indirect_assignments = auto_remediation_settings.value.include_all_indirect_assignments
          dynamic "include_only" {
            for_each = auto_remediation_settings.value.include_only != null ? auto_remediation_settings.value.include_only : []
            content {
              resource_id   = include_only.value.resource_id
              resource_type = include_only.value.resource_type
            }
          }
        }
      }
    }
  }

  dynamic "resource_settings" {
    for_each = each.value.resource_settings != null ? each.value.resource_settings : []
    content {
      include_admin_roles                     = resource_settings.value.include_admin_roles
      include_entitlements                    = resource_settings.value.include_entitlements
      individually_assigned_apps_only         = resource_settings.value.individually_assigned_apps_only
      individually_assigned_groups_only       = resource_settings.value.individually_assigned_groups_only
      only_include_out_of_policy_entitlements = resource_settings.value.only_include_out_of_policy_entitlements
      dynamic "target_resources" {
        for_each = resource_settings.value.target_resources != null ? resource_settings.value.target_resources : []
        content {
          dynamic "entitlement_bundles" {
            for_each = target_resources.value.entitlement_bundles != null ? target_resources.value.entitlement_bundles : []
            content {
              id = entitlement_bundles.value.id
            }
          }
          dynamic "entitlements" {
            for_each = target_resources.value.entitlements != null ? target_resources.value.entitlements : []
            content {
              id = entitlements.value.id
              dynamic "values" {
                for_each = entitlements.value.values != null ? entitlements.value.values : []
                content {
                  id = values.value.id
                }
              }
            }
          }
          resource_id = target_resources.value.resource_id
        }
      }
    }
  }
}

