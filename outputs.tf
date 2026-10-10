output "media_package_channels_id" {
  description = "Map of id values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "media_package_channels_arn" {
  description = "Map of arn values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "media_package_channels_channel_id" {
  description = "Map of channel_id values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.channel_id if v.channel_id != null && length(v.channel_id) > 0 }
}
output "media_package_channels_description" {
  description = "Map of description values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.description if v.description != null && length(v.description) > 0 }
}
output "media_package_channels_hls_ingest" {
  description = "Map of hls_ingest values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.hls_ingest if v.hls_ingest != null && length(v.hls_ingest) > 0 }
}
output "media_package_channels_region" {
  description = "Map of region values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.region if v.region != null && length(v.region) > 0 }
}
output "media_package_channels_tags" {
  description = "Map of tags values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "media_package_channels_tags_all" {
  description = "Map of tags_all values across all media_package_channels, keyed the same as var.media_package_channels"
  value       = { for k, v in aws_media_package_channel.media_package_channels : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

