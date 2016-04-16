require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    it "assigns a new user as @user and renders the new user view" do
      create(:user)
      get(:new)

      expect(assigns(:user)).to be_a_new(User)
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new artist" do
        expect {
          post :create, {:user => attributes_for(:user)}
        }.to change(User, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, {:user => attributes_for(:user)}
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
        expect(response).to redirect_to(login_path)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        post :create, {:user => attributes_for(:user, name: nil)}
        expect(assigns(:user)).to be_a_new(User)
      end

      it "redirects user back to new view" do
        post :create, {:user => attributes_for(:user, name: nil)}
        expect(response).to render_template("new")
      end
    end
  end
end
