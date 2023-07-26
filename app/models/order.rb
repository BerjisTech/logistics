# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :company_branch
  belongs_to :client
end
