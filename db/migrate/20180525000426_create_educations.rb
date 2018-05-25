class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :name
      t.date :startDate
      t.date :endDate
      t.boolean :incomplete
      t.boolean :enabled
      t.string :paperEarned

      t.timestamps
    end
  end
end
