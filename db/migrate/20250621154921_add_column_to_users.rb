class AddColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :nom, :string, null: false
  end
end
