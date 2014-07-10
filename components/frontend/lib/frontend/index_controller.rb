module Frontend
  class IndexController < ActionController::Base
    def show
      render file: Frontend::Component.root.join('app/assets/static/frontend/index')
    end
  end
end
