API::Component.routes.draw do
  scope(format: false) do
    use_doorkeeper do
      controllers tokens: 'oauth/tokens',
                  authorizations: 'oauth/authorizations'
      skip_controllers :applications, :authorized_applications
    end

    resources :users, only: :show
    resource :account, except: :delete

    # CORS preflight check
    match '/(*path)', to: 'application#cors_preflight_check',
                      via: :options

    # Catch all error route
    get '/(*path)', to: 'errors#show',
                    error_status: :not_found,
                    error_message: "Page not found"
  end
end
