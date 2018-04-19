class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false, null: false
    add_column :users, :editor, :boolean, default: false, null: false
    add_column :users, :submitter, :boolean, default: true, null: true
  end
end
