class FixUsersPart3Waterworld < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :name
      t.string :location
      t.string :image_url
      t.string :url
    end
  end
end
