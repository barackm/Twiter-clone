# frozen_string_literal: true

class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.integer :user_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
