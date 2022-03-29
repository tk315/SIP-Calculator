module API
  module V1
    module Helpers
      module User
        extend Grape::API::Helpers

        def display_all_users
          ::User.all
        end

        def create_new_user(params)
          ::User.create!(params)
        end
      end
    end
  end
end
