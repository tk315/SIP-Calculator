module API
  module V1
    module Helpers
      module Lumpsum
        extend Grape::API::Helpers

        def display_all_lumpsums
          ::Lumpsum.all
        end

        def create_new_lumpsum(params)
          invested_amount = params[:total_investment]
          total_value = invested_amount * ((1 + (params[:expected_return_rate] / (100 * 1.0))) ** params[:time_period])
          estimated_returns = total_value - invested_amount
          date_of_application = Date.today
          date_of_maturity = date_of_application + params[:time_period].years

          ::Lumpsum.create!(total_investment: params[:total_investment], expected_return_rate: params[:expected_return_rate], time_period: params[:time_period], date_of_application: date_of_application.to_s, date_of_maturity: date_of_maturity.to_s, invested_amount: invested_amount, estimated_returns: estimated_returns, total_value: total_value, user_id: 1)
        end
      end
    end
  end
end
