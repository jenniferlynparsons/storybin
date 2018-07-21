# == Route Map
#
#                   Prefix Verb   URI Pattern                     Controller#Action
#               users_show GET    /users/show(.:format)           users#show
#              users_index GET    /users/index(.:format)          users#index
#                    works GET    /works(.:format)                works#index
#                          POST   /works(.:format)                works#create
#                 new_work GET    /works/new(.:format)            works#new
#                edit_work GET    /works/:id/edit(.:format)       works#edit
#                     work GET    /works/:id(.:format)            works#show
#                          PATCH  /works/:id(.:format)            works#update
#                          PUT    /works/:id(.:format)            works#update
#                          DELETE /works/:id(.:format)            works#destroy
#              submissions GET    /submissions(.:format)          submissions#index
#                          POST   /submissions(.:format)          submissions#create
#           new_submission GET    /submissions/new(.:format)      submissions#new
#          edit_submission GET    /submissions/:id/edit(.:format) submissions#edit
#               submission GET    /submissions/:id(.:format)      submissions#show
#                          PATCH  /submissions/:id(.:format)      submissions#update
#                          PUT    /submissions/:id(.:format)      submissions#update
#                          DELETE /submissions/:id(.:format)      submissions#destroy
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#            user_password PATCH  /users/password(.:format)       devise/passwords#update
#                          PUT    /users/password(.:format)       devise/passwords#update
#                          POST   /users/password(.:format)       devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)         registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)        registrations#new
#   edit_user_registration GET    /users/edit(.:format)           registrations#edit
#        user_registration PATCH  /users(.:format)                registrations#update
#                          PUT    /users(.:format)                registrations#update
#                          DELETE /users(.:format)                registrations#destroy
#                          POST   /users(.:format)                registrations#create
#                    users GET    /users(.:format)                users#index
#                          POST   /users(.:format)                users#create
#                 new_user GET    /users/new(.:format)            users#new
#                edit_user GET    /users/:id/edit(.:format)       users#edit
#                     user GET    /users/:id(.:format)            users#show
#                          PATCH  /users/:id(.:format)            users#update
#                          PUT    /users/:id(.:format)            users#update
#                          DELETE /users/:id(.:format)            users#destroy
#                   issues GET    /issues(.:format)               issues#index
#                          POST   /issues(.:format)               issues#create
#                new_issue GET    /issues/new(.:format)           issues#new
#               edit_issue GET    /issues/:id/edit(.:format)      issues#edit
#                    issue GET    /issues/:id(.:format)           issues#show
#                          PATCH  /issues/:id(.:format)           issues#update
#                          PUT    /issues/:id(.:format)           issues#update
#                          DELETE /issues/:id(.:format)           issues#destroy
#                          GET    /pages/:page(.:format)          pages#show
#                     root GET    /                               pages#show {:page=>"home"}

Rails.application.routes.draw do

  get 'users/show'

  get 'users/index'

  resources :works
  resources :submissions

  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
  resources :issues

  # Yay static pages
  get '/pages/:page' => 'pages#show'

  root 'pages#show', page: 'home'
end
