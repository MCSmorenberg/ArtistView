class AddArtistimgToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :artistimg, :string
  end
end
