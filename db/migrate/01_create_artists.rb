class CreateArtists < ActiveRecord::Migration[5.2]
    def up
        #do
    end
   
    def down
        #undo
    end

    def change
        #primary way of writing migrations, works for majority of cases, where ActiveRecord knows how to reverse the migration automatically
        create_table :artists do |t|
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
        end 
    end 
  end