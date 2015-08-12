class Artist
    @@all_artists = []

    define_method(:initialize) do |name|
        @name = name
        @id = @@all_artists.length().+(1)
        @albums = []
    end

    define_method(:name) do
        @name
    end

    define_method(:id) do
        @id
    end

    define_method(:albums) do
        @albums
    end

    define_method(:save) do
        @@all_artists.push(self)
    end

    define_singleton_method(:all) do
        @@all_artists
    end

    define_singleton_method(:clear) do
        @@all_artists = []
    end

    define_singleton_method(:find) do |id|
        found_artist = nil
        @@all_artists.each() do |artist|
            if artist.id().eql?(id)
                found_artist = artist
            end
        end
        found_artist
    end

    define_method(:add_album) do |artist|
        @albums.push(artist)
    end


end
