class AddArtistToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :artist, :string
  end
end
