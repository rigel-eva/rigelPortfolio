class AddClientToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :client, :string
  end
end
