class FixUsersPart2ElectricBoogaloo < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :username
    remove_column :users, :email
    remove_column :users, :password_digest
  end
end
