module API
  module V1
    class User < Grape::API
      include API::V1::Defaults
      helpers API::V1::Helpers::User

      resource 'user' do
        desc 'Return all Users'
        get '/fetch-all-user' do
          present display_all_users, with: API::V1::Entities::User
        end

        desc 'Create a user'
        params do
          requires :name, type: String, desc: 'Name of the user'
          requires :email, type: String, desc: 'Email of the user'
          requires :phone, type: String, desc: 'Phone number of the user'
          requires :state, type: String, desc: 'State of the user'
          requires :city, type: String, desc: 'City of the user'
          requires :pan, type: String, desc: 'Pan number of the user'
          requires :password, type: String, desc: 'Password of the user'
          requires :dob, type: String, desc: 'Date of birth of the user'
        end
        post '/create-user' do
          present create_new_user(permitted_params), with: API::V1::Entities::User
        end
      end
    end
  end
end
