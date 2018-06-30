class AddFileToWork < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :file_data, :text
  end
end
