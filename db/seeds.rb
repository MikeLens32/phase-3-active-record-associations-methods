puts "Destroying all"
Song.delete_all
Genre.delete_all
Artist.delete_all

puts "Creating songs"
hotline_bling = Song.create(name: 'Hotline Bling')
thriller = Song.create(name: 'Thriller')

puts "Creating Artist"
drake = Artist.create(name: 'Drake')
mj = Artist.create(name: 'Michael Jackson')

puts "Creating Genre"
rap = Genre.create(name: 'Rap')
pop = Genre.create(name: 'Pop')

hotline_bling.artist = drake
thriller.artist = mj

puts "Shoveling"
drake.songs << hotline_bling
mj.songs << thriller

puts "Shoveling"
pop.songs << thriller
rap.songs << hotline_bling
