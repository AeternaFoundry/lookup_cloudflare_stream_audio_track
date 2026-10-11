data "cloudflare_stream_audio_track" "stream_audio_track_lookup" {
  for_each = var.stream_audio_track_lookup

  account_id = each.value.account_id
  identifier = each.value.identifier
}

