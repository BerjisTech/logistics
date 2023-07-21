class Staff < ApplicationRecord
  belongs_to :company_branch
  belongs_to :mtu
end
