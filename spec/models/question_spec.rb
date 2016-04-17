require 'rails_helper'

RSpec.describe Question, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:category) }
  end

  context "associations" do
    it { should have_many(:user_questions) }
    it { should have_many(:users).through(:user_questions) }
  end
end
