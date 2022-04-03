module API
  module V1
    class Base < Grape::API
      mount API::V1::User
      mount API::V1::Lumpsum
      mount API::V1::Sip
    end
  end
end
