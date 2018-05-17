class RenameNoteColumn < ActiveRecord::Migration
  def change
    rename_column :products, :notes, :note
  end
end
