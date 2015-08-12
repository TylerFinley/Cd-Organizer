class Album
    @@all_albums = []

    define_method(:initialize) do |title|
        @title = title
    end
    define_method(:title) do
        @title
    end
end
