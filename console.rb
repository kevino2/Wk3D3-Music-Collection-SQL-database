require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')


artist1 = Artist.new({'name' => 'Ben Folds'})
artist1.save()

artist2 = Artist.new({'name' => 'Elton John'})
artist2.save()

artist3 = Artist.new({'name' => 'Joe Jackson'})
artist3.save()

album1 = Album.new({'title' => 'Songs For Silverman', 'genre' => 'piano rock', 'artist_id' => "#{artist1.id}"})
album2 = Album.new({'title' => 'Goodbye Yellow Brick Road', 'genre' => '70s rock', 'artist_id' => "#{artist2.id}"})
album3 = Album.new({'title' => 'Goodbye Yellow Brick Road', 'genre' => 'rock', 'artist_id' => "#{artist3.id}"})

album1.save()
album2.save()
album3.save()
binding.pry()
