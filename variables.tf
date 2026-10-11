variable "serviceendpoint_npms" {
  description = <<EOT
Map of serviceendpoint_npms, attributes below
Required:
    - access_token
    - project_id
    - service_endpoint_name
    - url
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    access_token          = string
    project_id            = string
    service_endpoint_name = string
    url                   = string
    description           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_npms : (
        length(trimspace(v.access_token)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

