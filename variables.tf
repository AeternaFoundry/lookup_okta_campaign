variable "campaign_lookup" {
  description = <<EOT
Map of campaign_lookup, attributes below
Optional:
    - campaign_type
    - description
    - remediation_settings (block):
        - auto_remediation_settings (optional, block):
            - include_all_indirect_assignments (optional)
            - include_only (optional, block):
                - resource_id (required)
                - resource_type (required)
    - resource_settings (block):
        - include_admin_roles (optional)
        - include_entitlements (optional)
        - individually_assigned_apps_only (optional)
        - individually_assigned_groups_only (optional)
        - only_include_out_of_policy_entitlements (optional)
        - target_resources (optional, block):
            - entitlement_bundles (optional, block):
                - id (required)
            - entitlements (optional, block):
                - id (required)
                - values (optional, block):
                    - id (required)
            - resource_id (required)
EOT

  type = map(object({
    campaign_type = optional(string)
    description   = optional(string)
    remediation_settings = optional(list(object({
      auto_remediation_settings = optional(list(object({
        include_all_indirect_assignments = optional(bool)
        include_only = optional(list(object({
          resource_id   = string
          resource_type = string
        })))
      })))
    })))
    resource_settings = optional(list(object({
      include_admin_roles                     = optional(bool)
      include_entitlements                    = optional(bool)
      individually_assigned_apps_only         = optional(bool)
      individually_assigned_groups_only       = optional(bool)
      only_include_out_of_policy_entitlements = optional(bool)
      target_resources = optional(list(object({
        entitlement_bundles = optional(list(object({
          id = string
        })))
        entitlements = optional(list(object({
          id = string
          values = optional(list(object({
            id = string
          })))
        })))
        resource_id = string
      })))
    })))
  }))
}

