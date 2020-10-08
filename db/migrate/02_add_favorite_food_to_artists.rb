class AddFavoriteFoodToArtists < ActiveRecord::Migration[5.2]
    def change
        add_column :artist, :favorite_food, :string
    end
end