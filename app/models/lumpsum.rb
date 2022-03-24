class Lumpsum < ApplicationRecord
  self.primary_key = 'lumpsum_id'
  belongs_to :user
end
