module API
  module V1
    module Entities
      class Sip < Grape::Entity
        expose :monthly_investment
        expose :expected_return_rate
        expose :time_period
        expose :invested_amount
        expose :estimated_returns
        expose :total_value
      end
    end
  end
end
