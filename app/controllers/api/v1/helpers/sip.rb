module API
  module V1
    module Helpers
      module Sip
        extend Grape::API::Helpers

        def display_all_sips
          ::Sip.all
        end

        def create_new_sip(monthly_investment, expected_return_rate, time_period)
          invested_amount = monthly_investment * 12 * time_period
          i = expected_return_rate / (1200 * 1.0)
          total_value = monthly_investment * (((1 + i)**(time_period * 12)) - 1) * ((1 + i) / i)
          estimated_returns = total_value - invested_amount
          date_of_application = Date.today
          date_of_maturity = date_of_application + time_period.years

          ::Sip.create!(monthly_investment: monthly_investment, expected_return_rate: expected_return_rate, time_period: time_period, date_of_application: date_of_application.to_s, date_of_maturity: date_of_maturity.to_s, invested_amount: invested_amount, estimated_returns: estimated_returns, total_value: total_value, user_id: 1)
        end
      end
    end
  end
end
