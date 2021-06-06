# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'subscriptions#index'

  resources :lists, only: %i[index new create edit update destroy]
  resources :subscriptions, only: %i[index]
end
