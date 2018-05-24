class CreateSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :summaries do |t|
      t.string :summaryText
      t.boolean :enabled

      t.timestamps
    end
  end
end
