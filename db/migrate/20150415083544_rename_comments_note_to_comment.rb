class RenameCommentsNoteToComment < ActiveRecord::Migration
  def change
    rename_column :comments, :note, :comment
  end
end
