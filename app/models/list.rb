# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  has_many :subscriptions, dependent: :destroy
  has_many :list_elements, dependent: :destroy
end
