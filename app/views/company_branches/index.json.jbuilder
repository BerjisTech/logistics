# frozen_string_literal: true

json.array! @company_branches, partial: 'company_branches/company_branch', as: :company_branch
