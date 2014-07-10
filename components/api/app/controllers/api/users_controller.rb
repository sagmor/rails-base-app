module API
  class UsersController < API::ApplicationController
    def show
      @user = User.find_with_username_or_id(params[:user_id])

      respond_with(@user)
    end
  end
end

