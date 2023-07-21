# frozen_string_literal: true

json.extract! route, :id, :company_branch_id, :created_at, :updated_at
json.url route_url(route, format: :json)
