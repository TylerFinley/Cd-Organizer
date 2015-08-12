require('sinatra')
require('sinatra/reloader')
require('./lib/album')
also_reload('lib/**/*.rb')

get('/') do
    @all_albums = Album.all()
    erb(:index)
end

post('/new_album') do
    artist = params.fetch("artist")
    album = params.fetch("album")
    year = params.fetch("year")
    new_album = Album.new(artist, album, year)
    new_album.save()
    erb(:success)
end
get('/clear') do
    @all_albums = Album.clear()
    erb(:index)
end
