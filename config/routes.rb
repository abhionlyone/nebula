# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :projects
end
