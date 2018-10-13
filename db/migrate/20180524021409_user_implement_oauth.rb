class UserImplementOauth < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :provider, null: false, default: 'NO' # Remove these before rolling out
      t.string :uid, null: false, default: 'NO'
      add_index :users, :provider
      add_index :users, :uid
      add_index :users, %i[provider uid], unique: true
    end
  end
end
