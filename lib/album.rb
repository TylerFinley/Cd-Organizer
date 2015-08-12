class Album
    @@all_albums = []

    define_method(:initialize) do |artist, title, year|
        @artist = artist
        @title = title
        @year = year
    end

    define_method(:artist) do
        @artist
    end

    define_method(:title) do
        @title
    end

    define_method(:year) do
        @year
    end

    define_singleton_method(:all) do
        @@all_albums
    end

    define_method(:save) do
        @@all_albums.push(self)
    end

    define_singleton_method(:clear) do
    @@all_albums = []
    end
end
