class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :skillName
      t.string :skillType
      t.timestamps
    end
  end
end
