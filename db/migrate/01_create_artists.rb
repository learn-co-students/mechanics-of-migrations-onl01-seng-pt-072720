
# db/migrate/01_create_artists.rb

class CreateArtists < ActiveRecord::Migration[5.2]

    ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
  def up
  end

  def down
  end

  def change
    create_table :artists do |t|
        t.string :name
        t.string :genre
        t.integer :age
        t.string :hometown
    end
  end
end

