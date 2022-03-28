class Sip < ApplicationRecord
  belongs_to :user, class_name: "User"

  validates :monthly_investment, presence: true
  validates :expected_return_rate, presence: true
  validates :time_period, presence: true
  validates :date_of_application, presence: true
  validates :date_of_maturity, presence: true
  validates :invested_amount, presence: true
  validates :estimated_returns, presence: true
  validates :total_value, presence: true
end
