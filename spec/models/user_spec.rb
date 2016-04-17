require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  context "associations" do
    it { should have_secure_password }
    it { should have_many(:user_questions) }
    it { should have_many(:questions).through(:user_questions) }
  end
end
