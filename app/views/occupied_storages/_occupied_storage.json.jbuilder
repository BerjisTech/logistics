# frozen_string_literal: true

json.extract! occupied_storage, :id, :storage_id, :client_id, :created_at, :updated_at
json.url occupied_storage_url(occupied_storage, format: :json)
