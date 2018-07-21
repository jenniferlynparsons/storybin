class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.date :pub_date
      t.date :start_date
      t.date :end_date
      t.boolean :active

      t.timestamps
    end
  end
end
