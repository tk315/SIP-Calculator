class Sip < ApplicationRecord
  self.primary_key = 'sip_id'
  belongs_to :user
end
