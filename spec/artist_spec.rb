require('rspec')
require('album')
require('artist')

describe(Artist) do
    # before() do
    #     Artist.clear()
    # end

    describe('#name') do
        it("returns the name of the artist") do
            test_artist = Artist.new("Justin Bieber")
            expect(test_artist.name()).to(eq("Justin Bieber"))
        end
    end

    describe('#id') do
        it("returns the ID of the artist") do
            test_artist = Artist.new("Justin Bieber")
            expect(test_artist.id()).to(eq(1))
        end
    end

end
