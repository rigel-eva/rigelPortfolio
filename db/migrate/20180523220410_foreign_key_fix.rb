class ForeignKeyFix < ActiveRecord::Migration[5.1]
  def change
    change_table :skills do |t|
      t.references :skill_group
    end
  end
end
