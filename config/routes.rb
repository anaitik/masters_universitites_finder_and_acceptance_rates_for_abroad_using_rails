Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post '/bx_block_calculate_gpa/calculate_gpa', to: 'bx_block_calculate_gpa/calculate_gpa#calculate_gpa'
  post '/bx_block_university/search_universities', to: 'bx_block_university/search_universities#search'
  post '/bx_block_university/ideal_universities', to: 'bx_block_university/ideal_universities#ideal_universitat'

  namespace :bx_block_login do
    resource :login, only: [:create]
  end
  
end
