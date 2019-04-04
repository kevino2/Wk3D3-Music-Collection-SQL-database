require_relative ('../db/sql_runner.rb')
require_relative ('album.rb')

class Artist

  attr_accessor :name
  attr_reader :id


def initialize(options)
  @id = options["id"].to_i() if options["id"]
  @name = options["name"]
end

def save()
 sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id"
 values = [@name]
 result = SqlRunner.run(sql, values)
 @id = results[0]["id"].to_i()
end

def Artist.all()
  sql = "SELECT * FROM artists"
  results = SqlRunner.run(sql)
  return result.map {|artist| Artist.new(artist)}
end

def update()
  sql = "UPDATE artists SET name = $1 WHERE id = $2"
  values = [@name, @id]
  SqlRunner.run(sql, values)
end


end
