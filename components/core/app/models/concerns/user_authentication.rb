module UserAuthentication
  extend ActiveSupport::Concern

  included do
    has_secure_password validations: false
    include IgnoreEmptyPasswords
  end

  module IgnoreEmptyPasswords
    def password=(new_password)
      super unless new_password.blank?
    end
  end

  module ClassMethods
    def authenticate(username_or_email, password)
      user = User.find_with_username_or_email(username_or_email)
      user && user.password_digest? && user.authenticate(password)
    end
  end
end
