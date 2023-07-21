class OccupiedStorage < ApplicationRecord
  belongs_to :storage
  belongs_to :client
end
