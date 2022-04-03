module API
  module V1
    module Helpers
      module User
        extend Grape::API::Helpers

        def display_all_users
          ::User.all
        end

        def create_new_user(params)
          ::User.create!(name: params[:name], email: params[:email], phone: params[:phone], state: params[:state], city: params[:city], pan: params[:pan], password: params[:password], dob: params[:dob])
        end
      end
    end
  end
end
