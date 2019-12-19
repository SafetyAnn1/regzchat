require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "chats#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "chats#new action" do
    it "should require users to be logged in" do
      get :new
      expect(response).to redirect_to new_user_session_path
    end

    it "should successfully show the new form" do
      user = FactoryBot.create(:user)
      sign_in user

      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "chats#create action" do

    it "should require users to be logged in" do
      post :create, params: { chat: { message: "Hello" } }
      expect(response).to redirect_to new_user_session_path
    end

    it "should successfully create a new chat in our database" do
      user = FactoryBot.create(:user)
      sign_in user

      post :create, params: { chat: { message: 'Hello!' } }
      expect(response).to redirect_to root_path

      chat = Chat.last
      expect(chat.message).to eq("Hello!")
      expect(chat.user).to eq(user)
    end

    it "should properly deal with validation errors" do
      user = FactoryBot.create(:user)
      sign_in user

      chat_count = Chat.count
      post :create, params: { chat: { message: '' } }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(chat_count).to eq Chat.count
    end

  end
end

end
