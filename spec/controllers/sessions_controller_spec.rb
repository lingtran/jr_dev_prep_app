require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  context "login with valid params" do
    # how to test sessions#new controller action?
    xit "GET #new" do
      create(:user)
      get(session[:user])

      expect(assigns(session[:user])).to be_a_new(Session)
    end
  end
end
