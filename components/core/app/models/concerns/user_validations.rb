module UserValidations
  extend ActiveSupport::Concern

  included do
    validates :primary_email, {
      presence: true,
      format: /@/,
      uniqueness: { if: :primary_email_changed? }
    }
  end
end


