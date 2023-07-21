# frozen_string_literal: true

json.extract! company_branch, :id, :company_id, :created_at, :updated_at
json.url company_branch_url(company_branch, format: :json)
