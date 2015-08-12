class Album
    @@all_albums = []

    define_method(:initialize) do |title, year|
        @title = title
        @year = year
    end
    define_method(:title) do
        @title
    end
    define_method(:year) do
        @year
    end


end
