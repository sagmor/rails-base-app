require 'rails-api/action_controller/api'

module API
  class ApplicationController < ActionController::API
    include API::CORS
    include API::OAuth
    include API::RespondWith
    include API::CurrentAccount
  end
end
