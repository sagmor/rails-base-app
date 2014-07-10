Frontend::Component.routes.draw do
  scope format: false do
    # Catch all route
    get '/(*path)', to: 'frontend/index#show'
  end
end
