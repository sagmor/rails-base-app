module API
  module CORS
    extend ActiveSupport::Concern

    included do
      before_filter :set_cors_headers
    end

    def cors_preflight_check
      render :text => '', :content_type => 'text/plain'
    end

    protected
      def set_cors_headers
        # Allow all for now
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
        headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Authorization'
        headers['Access-Control-Max-Age'] = '1728000'
      end
  end
end
