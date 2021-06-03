class ChangeImageToLocationInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :image, :location
    rename_column :users, :background, :website
    change_column :users, :birthdate, :datetime
  end
end
