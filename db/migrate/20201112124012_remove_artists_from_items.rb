class RemoveArtistsFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :artist, :string
  end
end
