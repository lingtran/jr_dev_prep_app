require 'rails_helper'

RSpec.describe Question, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:category) }
  end

# add context for associations
end
