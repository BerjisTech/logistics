# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :company_branch
end
