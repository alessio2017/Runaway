class FixNamesForUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :nickname, :name
    add_column :users, :image, :string
  end
end
