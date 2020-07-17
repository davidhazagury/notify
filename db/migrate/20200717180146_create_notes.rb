class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :note_title
      t.string :note_content

      t.timestamps
    end
  end
end
