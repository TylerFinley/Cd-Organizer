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

    describe("#albums") do
        it('returns an empty array for the albums') do
            test_artist = Artist.new("Justin Bieber")
            expect(test_artist.albums()).to(eq([]))
        end
    end

    describe('#save') do
        it("adds an artist to the array of saved artists") do
            test_artist = Artist.new("Justin Bieber")
            expect(test_artist.save()).to(eq([test_artist]))
        end
    end
end
