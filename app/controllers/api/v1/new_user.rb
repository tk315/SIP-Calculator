module API
  module V1
    class New_user < Grape::API
      include API::V1::Defaults

      resource :new_user do
        desc 'Return all users'
        get do
          User.all
        end

        desc 'Create a user'
        params do
          requires :name, type: String
          requires :email, type: String
          requires :phone, type: String
          requires :state, type: String
          requires :city, type: String
          requires :role, type: Integer
          requires :pan, type: String
          requires :password, type: String
          requires :dob, type: String
        end
        post do
          User.create(name: params[:name], email: params[:email], phone: params[:phone], state: params[:state], city: params[:city], role: params[:role], pan: params[:pan], password: params[:password], dob: params[:dob])
        end
      end
    end
  end
end
