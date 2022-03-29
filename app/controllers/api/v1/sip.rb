module API
  module V1
    class Sip < Grape::API
      include API::V1::Defaults
      helpers API::V1::Helpers::Sip

      resource "fetch-all-sip" do
        desc 'Return all sips'
        get do
          present display_all_sips, with: API::V1::Entities::Sip
        end
      end

      resource "create-a-sip" do
        desc 'Create a sip'
        params do
          requires :monthly_investment, type: Integer, desc: 'Monthly investment of the user'
          requires :expected_return_rate, type: Float, desc: 'Expected return rate of the user'
          requires :time_period, type: Integer, desc: 'Time period for which user is investing'
        end
        post do
          present create_new_sip(params), with: API::V1::Entities::Sip
        end
      end
    end
  end
end
