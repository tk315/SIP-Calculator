module API
  module V1
    module Helpers
      module Sip
        extend Grape::API::Helpers

        def display_all_sips
          ::Sip.all
        end

        def create_new_sip(params)
          invested_amount = params[:monthly_investment] * 12 * params[:time_period]
          i = params[:expected_return_rate] / (1200 * 1.0)
          total_value = params[:monthly_investment] * (((1 + i)**(params[:time_period] * 12)) - 1) * ((1 + i) / i)
          estimated_returns = total_value - invested_amount
          date_of_application = Date.today
          date_of_maturity = date_of_application + params[:time_period].years

          ::Sip.create!(monthly_investment: params[:monthly_investment], expected_return_rate: params[:expected_return_rate], time_period: params[:time_period], date_of_application: date_of_application.to_s, date_of_maturity: date_of_maturity.to_s, invested_amount: invested_amount, estimated_returns: estimated_returns, total_value: total_value, user_id: 1)
        end
      end
    end
  end
end
