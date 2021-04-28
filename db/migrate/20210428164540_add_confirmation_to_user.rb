# frozen_string_literal: true

class AddConfirmationToUser < ActiveRecord::Migration[6.1]
  def change
    change_table :users, bulk: true do |t|
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :confirmation_token
      t.string :unconfirmed_email
    end
  end
end
