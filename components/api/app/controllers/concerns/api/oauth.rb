module API
  module OAuth
    extend ActiveSupport::Concern

    protected
      def doorkeeper_unauthorized_render_options
        {:json => {:error => "Not authorized"}}
      end

    module ClassMethods
      def oauth(methods, options = {})
        if options[:scopes]
          options[:scopes] = Array(options[:scopes])
          options[:scopes] << :full unless options[:scopes].include?(:full)
        end

        doorkeeper_for methods, options
      end
    end
  end
end


