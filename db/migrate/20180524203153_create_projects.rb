class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :projectName
      t.date :projectStartDate
      t.date :projectEndDate
      t.text :projectInfo

      t.timestamps
    end
  end
end
