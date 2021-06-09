# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'subscriptions#index'

  resources :lists, only: %i[index new create edit update destroy] do
    resources :list_elements do
      collection do
        post 'preview', to: 'list_elements#preview'
      end
    end
  end
  resources :subscriptions, only: %i[index]
end
