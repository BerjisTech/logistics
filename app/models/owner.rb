# frozen_string_literal: true

class Owner < ApplicationRecord
  belongs_to :mtu
  has_many :companies
  has_many :company_branches, through: :companies
  has_many :clients, through: :company_branches
  has_many :staffs, through: :company_branches
  has_many :products, through: :company_branches
  has_many :orders, through: :products
end
