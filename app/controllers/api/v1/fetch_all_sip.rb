module API
  module V1
    class Fetch_all_sip < Grape::API
      include API::V1::Defaults

      resource :fetch_all_sip do
        desc 'Return all sips'
        get do
          Sip.all
        end
      end
    end
  end
end
