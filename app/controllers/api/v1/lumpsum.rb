module API
  module V1
    class Lumpsum < Grape::API
      include API::V1::Defaults
      helpers API::V1::Helpers::Lumpsum

      resource 'lumpsum' do
        desc 'Return all Lumpsums'
        get '/fetch-all-lumpsum' do
          present display_all_lumpsums, with: API::V1::Entities::Lumpsum
        end

        desc 'Create a lumpsum'
        params do
          requires :total_investment, type: Integer, desc: 'Total investment of the user'
          requires :expected_return_rate, type: Float, desc: 'Expected return rate of the user'
          requires :time_period, type: Integer, desc: 'Years for which user is investing'
        end
        post '/create-lumpsum' do
          present create_new_lumpsum(permitted_params[:total_investment], params[:expected_return_rate], params[:time_period]), with: API::V1::Entities::Lumpsum
        end
      end
    end
  end
end
