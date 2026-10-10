variable "media_package_channels" {
  description = <<EOT
Map of media_package_channels, attributes below
Required:
    - channel_id
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    channel_id  = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.media_package_channels : (
        can(regex("^[\\w-]+$", v.channel_id))
      )
    ])
    error_message = "must only contain alphanumeric characters, dashes or underscores"
  }
}

