# frozen_string_literal: true

json.extract! staff, :id, :company_branch_id, :mtu_id, :created_at, :updated_at
json.url staff_url(staff, format: :json)
