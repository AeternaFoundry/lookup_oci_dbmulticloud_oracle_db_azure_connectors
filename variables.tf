variable "dbmulticloud_oracle_db_azure_connectors_lookup" {
  description = <<EOT
Map of dbmulticloud_oracle_db_azure_connectors_lookup, attributes below
Required:
    - compartment_id
Optional:
    - db_cluster_resource_id
    - display_name
    - oracle_db_azure_connector_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id               = string
    db_cluster_resource_id       = optional(string)
    display_name                 = optional(string)
    oracle_db_azure_connector_id = optional(string)
    state                        = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

