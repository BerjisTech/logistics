# frozen_string_literal: true

json.extract! client, :id, :company_branch_id, :created_at, :updated_at
json.url client_url(client, format: :json)
