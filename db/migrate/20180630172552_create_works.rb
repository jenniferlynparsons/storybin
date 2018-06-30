class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :author
      t.string :workfile

      t.timestamps
    end
  end
end
