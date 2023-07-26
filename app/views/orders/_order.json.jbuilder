# frozen_string_literal: true

json.extract! order, :id, :company_branch_id, :client_id, :created_at, :updated_at
json.url order_url(order, format: :json)
