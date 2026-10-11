output "stream_audio_track_lookup_account_id" {
  description = "Map of account_id values across all stream_audio_track_lookup, keyed the same as var.stream_audio_track_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_stream_audio_track.stream_audio_track_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "stream_audio_track_lookup_audio" {
  description = "Map of audio values across all stream_audio_track_lookup, keyed the same as var.stream_audio_track_lookup except keys with no audio are omitted"
  value       = { for k, v in data.cloudflare_stream_audio_track.stream_audio_track_lookup : k => v.audio if v.audio != null && length(v.audio) > 0 }
}
output "stream_audio_track_lookup_identifier" {
  description = "Map of identifier values across all stream_audio_track_lookup, keyed the same as var.stream_audio_track_lookup except keys with no identifier are omitted"
  value       = { for k, v in data.cloudflare_stream_audio_track.stream_audio_track_lookup : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}

