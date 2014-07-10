Rails.application.config.ember.variant = :development
Rails.application.config.handlebars.output_type = :amd

# Remove initial / in template require name
module Ember
  module Handlebars
    class Template
      def amd_template_target(scope)
        scope.logical_path.split(".").first
      end
    end
  end
end
