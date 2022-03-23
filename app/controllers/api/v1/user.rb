module API
  module V1
    class User < Grape::API
      include API::V1::Defaults

      resource :user do
        desc "Return all users"
        get "", root: :user do
          # User.all
          puts "hello world"
        end

        desc "Return a user"
        params do
          requires :id, type: String, desc: "ID of the user"
        end
        get ":id", root: "user" do
          User.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
