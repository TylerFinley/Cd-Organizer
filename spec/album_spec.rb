require('rspec')
require('album')

describe(Album) do
    # before() do
    #     Album.clear()
    # end

    describe("#title") do
        it("returns the title of the album") do
            test_album = Album.new("My World 2.0", 2010)
            expect(test_album.title()).to(eq("My World 2.0"))
        end
    end
    describe("#year") do
        it("returns the year the album was released") do
            test_album = Album.new("My World 2.0", 2010)
            expect(test_album.year()).to(eq(2010))
        end
    end
end
