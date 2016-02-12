class CreateArtistImgs < ActiveRecord::Migration
  def change
    create_table :artist_imgs do |t|
      t.string :picture
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
