class Question < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates :category, presence: true

  def self.random
    all.sample
  end
end
