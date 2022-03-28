module API
  module V1
    class Create_a_sip < Grape::API
      include API::V1::Defaults

      resource :create_a_sip do
        desc 'Create a sip'
        params do
          requires :monthly_investment, type: Integer
          requires :expected_return_rate, type: Float
          requires :time_period, type: Integer
        end
        post do
          invested_amount = params[:monthly_investment] * 12 * params[:time_period]
          i = params[:expected_return_rate] / (1200 * 1.0)
          total_value = params[:monthly_investment] * (((1 + i)**(params[:time_period] * 12)) - 1) * ((1 + i) / i)
          estimated_returns = total_value - invested_amount

          # Sip.create(monthly_investment: params[monthly_investment], expected_return_rate: params[expected_return_rate], time_period: params[time_period], invested_amount: invested_amount, estimated_returns: estimated_returns, total_value: total_value)

          puts invested_amount
          puts estimated_returns
          puts total_value
        end
      end
    end
  end
end
