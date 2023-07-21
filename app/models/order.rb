class Order < ApplicationRecord
  belongs_to :company_branch
  belongs_to :client
end
