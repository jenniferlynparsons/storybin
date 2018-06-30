require "dotenv/load" #optional, load environment variables from .env file
require "shrine/storage/google_drive_storage"

Shrine.storages = {
  cache: Shrine::Storage::GoogleDriveStorage.new,
  store: Shrine::Storage::GoogleDriveStorage.new,
}


Shrine.plugin :cached_attachment_data # for forms
Shrine.plugin :determine_mime_type
Shrine.plugin :remove_attachment
