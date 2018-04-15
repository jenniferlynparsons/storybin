Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Yay static pages
  get "/pages/:page" => "pages#show"

  root "pages#show", page: "home"
end
