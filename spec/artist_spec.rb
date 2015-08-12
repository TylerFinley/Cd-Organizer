require('rspec')
require('album')
require('artist')

describe(Artist) do
    before() do
        Artist.clear()
    end

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

    describe(".all") do
        it("is empty at first") do
            expect(Artist.all()).to(eq([]))
        end
    end

    describe(".clear") do
        it("empties out all of the saved artists") do
            Artist.new("Justin Bieber").save()
            Artist.clear()
            expect(Artist.all()).to(eq([]))
        end
    end

    describe(".find") do
        it("returns a artist by its id number") do
            test_artist = Artist.new("Justin Bieber")
            test_artist.save()
            test_artist2 = Artist.new("One Direction")
            test_artist2.save()
            expect(Artist.find(test_artist.id())).to(eq(test_artist))
        end
    end

    describe('#add_album') do
        it("adds a new album to an artist") do
            test_artist = Artist.new("Justin Bieber")
            test_album = Album.new("My World 2.0", 2010)
            test_artist.add_album(test_album)
            expect(test_artist.albums()).to(eq([test_album]))
        end
    end
end
