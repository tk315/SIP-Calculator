module API
  module V1
    class Fetch_all_lumpsum < Grape::API
      include API::V1::Defaults

      resource :fetch_all_lumpsum do
        desc 'Return all Lumpsums'
        get do
          Lumpsum.all
        end
      end
    end
  end
end
