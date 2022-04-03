module API
  module V1
    module Entities
      class User < Grape::Entity
        expose :name
        expose :email
        expose :state
        expose :city
        expose :dob
      end
    end
  end
end
