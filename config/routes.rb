Rails.application.routes.draw do
  mount API::Component => "/", constraints: { subdomain: 'api' }
  mount Frontend::Component => "/"
end
