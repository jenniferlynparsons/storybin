class AddPublicationToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :reprint_publication, :text
  end
end
