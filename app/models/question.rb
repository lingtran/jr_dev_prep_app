class Question < ActiveRecord::Base
  has_many :user_questions
  has_many :users, through: :user_questions

  validates :title, uniqueness: true, presence: true
  validates :category, presence: true

  def self.random
    all.sample
  end
end
