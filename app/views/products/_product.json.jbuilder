# frozen_string_literal: true

json.extract! product, :id, :company_branch_id, :created_at, :updated_at
json.url product_url(product, format: :json)
