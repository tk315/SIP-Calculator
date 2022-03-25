class Lumpsum < ApplicationRecord
  belongs_to :user, class_name: "User"

  validates :invested_amount, presence: true
  validates :estimated_returns, presence: true
  validates :total_value, presence: true
end
