require_relative ('../db/sql_runner.rb')
require_relative ('artist.rb')

class Album
attr_accessor :title, :genre, :artist_id
attr_reader :id

def initialize(options)
  @id = options['id'].to_i
  @title = options["title"]
  @genre = options["genre"]
  @artist_id = options["artist_id"].to_i
end

def save()
  sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id;"
  values = [@name]
  result = SqlReader.run ()
  @id = result[0]['id'].to_i
end

def Album.all()
sql = "UPDATE * FROM artists"
result = SqlRunner.run(sql)
return result.map {|album| Album.new(album)}
end

def update()
  sql "UPDATE albums SET (title, genre, artist_id) = ($1, $2, $3) WHERE id = $4"
  values = [@title, @genre, @artist_id,]
  SqlRunner.run(sql, values)
end

# def Album.delete_all 

end
