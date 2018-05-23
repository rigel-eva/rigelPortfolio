class CreateSkillGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :skills, :skillType
    create_table :skill_groups do |t|
      t.string :skillType, index: true
      t.timestamps
    end
  end
end
