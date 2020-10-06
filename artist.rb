class Artist < ActiveRecord::Base
 ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
      )

    def create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS artists (
    id INTEGER PRIMARY KEY,
    name TEXT,
    genre TEXT,
    age INTEGER,
    hometown TEXT
    )
    SQL

    ActiveRecord::Base.connection.execute(sql)

    end
end