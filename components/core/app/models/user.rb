class User < ActiveRecord::Base
  include UserValidations
  include UserFinders
  include UserAuthentication
end
