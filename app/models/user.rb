class User < ActiveRecord::Base
  has_secure_password
  validates :email, format: { with: /\w{3,}@\w{2,}\.\w{2,}/ }
end
