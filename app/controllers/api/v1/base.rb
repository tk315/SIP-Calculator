module API
  module V1
    class Base < Grape::API
      mount API::V1::New_user
      mount API::V1::Create_a_lumpsum
      mount API::V1::Create_a_sip
      mount API::V1::Fetch_all_lumpsum
      mount API::V1::Fetch_all_sip
    end
  end
end
