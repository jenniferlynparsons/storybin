class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.text :cover_letter
      t.boolean :active
      t.boolean :reprint
      t.date :reprint_date
      t.string :status

      t.timestamps
    end
  end
end
