# frozen_string_literal: true

class CompanyBranch < ApplicationRecord
  belongs_to :company
  belongs_to :owner
  belongs_to :mtu
  has_many :clients
  has_many :products
  has_many :staffs
end
