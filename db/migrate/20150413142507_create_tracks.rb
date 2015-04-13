class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :user_id
      t.integer :tag_id
      t.text :track_image

      t.timestamps null: false
    end
  end
end
