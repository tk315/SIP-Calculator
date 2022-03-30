module API
  module V1
    module Helpers
      module User
        extend Grape::API::Helpers

        def display_all_users
          ::User.all
        end

        def create_new_user(name, email, phone, state, city, pan, password, dob)
          ::User.create!(name: name, email: email, phone: phone, state: state, city: city, pan: pan, password: password, dob: dob)
        end
      end
    end
  end
end
