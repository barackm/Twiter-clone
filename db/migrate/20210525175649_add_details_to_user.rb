# frozen_string_literal: true

class AddDetailsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :about, :string
    add_column :users, :image, :string
    add_column :users, :background, :string
    add_column :users, :birthdate, :string
  end
end
