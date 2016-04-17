class User < ActiveRecord::Base
  has_secure_password

  has_many :user_questions
  has_many :questions, through: :user_questions

  validates :name,
            :username,
            :password, presence: true

  validates :email, presence: true, uniqueness: true
end
