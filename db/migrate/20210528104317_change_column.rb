class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :followers, :follower_id, :integer
  end
end
