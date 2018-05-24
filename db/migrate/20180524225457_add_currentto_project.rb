class AddCurrenttoProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :current, :boolean
  end
end
