class AddFolderToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :folder, null: false, foreign_key: true
  end
end
