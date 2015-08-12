require('rspec')
require('album')

describe(Album) do
    # before() do
    #     Album.clear()
    # end

    describe("#title") do
        it("returns the title of the album") do
            test_album = Album.new("My World 2.0")
            expect(test_album.title()).to(eq("My World 2.0"))
        end
    end
end
