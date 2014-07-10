module API
  module CurrentAccount
    extend ActiveSupport::Concern

    protected
      def current_account
        @current_account ||= User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end
  end
end

