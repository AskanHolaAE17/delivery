# frozen_string_literal: true

Rails.application.routes.draw do
  
  resources :packages
  resources :couriers do
    resources :packages
  end  
  
  root 'couriers#index'
  get '*path', to: 'couriers#index'  
  
end
