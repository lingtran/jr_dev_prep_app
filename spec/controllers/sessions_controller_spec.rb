require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  xcontext "login with valid params" do
    # how to test sessions#new controller action?
    it "GET #new" do
      create(:user)
      get(:new)

      expect(assigns(:user)).to be_a_new(session[:user_id])
      expect(response).to render_template("new")
    end
  end
end
