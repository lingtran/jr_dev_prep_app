class User < ActiveRecord::Base
  has_secure_password

  validates :name,
            :username,
            :password, presence: true

  validates :email, presence: true, uniqueness: true
end
