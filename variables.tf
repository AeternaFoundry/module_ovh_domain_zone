variable "domain_zones" {
  description = <<EOT
Map of domain_zones, attributes below
Optional:
    - ovh_subsidiary
    - payment_mean
    - order (block):
    - plan (block):
        - catalog_name (optional)
        - configuration (optional, block):
            - label (required)
            - value (required)
        - duration (required)
        - plan_code (required)
        - pricing_mode (required)
    - plan_option (block):
        - catalog_name (optional)
        - configuration (optional, block):
            - label (required)
            - value (required)
        - duration (required)
        - plan_code (required)
        - pricing_mode (required)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    ovh_subsidiary = optional(string)
    payment_mean   = optional(string)
    order = optional(list(object({
    })))
    plan = optional(object({
      catalog_name = optional(string)
      configuration = optional(list(object({
        label = string
        value = string
      })))
      duration     = string
      plan_code    = string
      pricing_mode = string
    }))
    plan_option = optional(list(object({
      catalog_name = optional(string)
      configuration = optional(list(object({
        label = string
        value = string
      })))
      duration     = string
      plan_code    = string
      pricing_mode = string
    })))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

