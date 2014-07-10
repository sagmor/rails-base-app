module API
  class AccountsController < API::ApplicationController
    oauth :show,   scopes: :public
    oauth :update, scopes: :full

    def show
      respond_with(current_account, serializer: AccountSerializer)
    end

    def create
      @account = User.new(account_params)

      respond_with(@account, serializer: AccountSerializer, save: true)
    end

    def update
      current_account.attributes = account_params

      respond_with(current_account, serializer: AccountSerializer, save: true)
    end

    def account_params
      params.require(:account).permit(:primary_email, :password, :first_name, :last_name, :username)
    end
  end
end
