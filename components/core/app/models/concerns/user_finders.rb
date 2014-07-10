module UserFinders
  extend ActiveSupport::Concern

  module ClassMethods
    def find_with_username_or_id(username_or_id)
      self.where(
        if username_or_id =~ /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i
          { id: username_or_id }
        else
          { username: username_or_id }
        end
      ).first
    end

    def find_with_username_or_email(username_or_email)
      self.where(
        if username_or_email =~ /@/
          { primary_email: username_or_email }
        else
          { username: username_or_email }
        end
      ).first
    end
  end
end

