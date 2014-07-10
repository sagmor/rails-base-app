module API
  module OAuth
    class TokensController < Doorkeeper::TokensController
      include API::CORS

    end
  end
end

