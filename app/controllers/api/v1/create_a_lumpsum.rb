module API
  module V1
    class Create_a_lumpsum < Grape::API
      include API::V1::Defaults

      resource :create_a_lumpsum do
        desc 'Create a lumpsum'
        params do
          requires :total_investment, type: Integer
          requires :expected_return_rate, type: Float
          requires :time_period, type: Integer
        end
        post do
          invested_amount = params[:total_investment]
          total_value = invested_amount * ((1 + (params[:expected_return_rate] / (100 * 1.0))) ** params[:time_period])
          estimated_returns = total_value - invested_amount

          # Lumpsum.create(monthly_investment: params[monthly_investment], expected_return_rate: params[expected_return_rate], time_period: params[time_period], invested_amount: invested_amount, estimated_returns: estimated_returns, total_value: total_value)

          puts invested_amount
          puts estimated_returns
          puts total_value
        end
      end
    end
  end
end
