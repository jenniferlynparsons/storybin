class AssociateSubmissionsToIssuesAndWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :user_id, :integer
    add_column :submissions, :work_id, :integer
    add_column :submissions, :issue_id, :integer
  end
end
