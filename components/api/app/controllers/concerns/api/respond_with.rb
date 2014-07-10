module API
  module RespondWith
    extend ActiveSupport::Concern

    private
      def respond_with(object, options={})
        if options.delete(:save)
          new_record = object.new_record?

          if object.save
            options[:status] = :created if new_record
          else
            object = {
              errors: object.errors
            }
            options.delete(:serializer)
            options[:status] = :unprocessable_entity
          end
        end

        render({json: object}.merge(options))
      end
  end
end

