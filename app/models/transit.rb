class Transit < ApplicationRecord
  belongs_to :company_branch
  belongs_to :transit_route
end
