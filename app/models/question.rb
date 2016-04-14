class Question < ActiveRecord::Base

  def self.random
    all.sample
  end
end
