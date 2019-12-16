Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root controller: :chats, action: :index

  resources :room_messages
  resources :rooms
  resources :users, only: [:show, :update]
  resources :charges
end
