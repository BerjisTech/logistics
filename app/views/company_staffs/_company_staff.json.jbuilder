# frozen_string_literal: true

json.extract! company_staff, :id, :company_branch_id, :created_at, :updated_at
json.url company_staff_url(company_staff, format: :json)
