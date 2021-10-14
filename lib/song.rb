class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(provided_name, provided_artist, provided_genre)
        self.name = provided_name
        self.artist = provided_artist
        self.genre = provided_genre
        @@count += 1
        @@artists.push(provided_artist)
        @@genres.push(provided_genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_hash = {}
        @@genres.each do |genre|
            if genre_count_hash.key?(genre) 
                genre_count_hash[genre] += 1
            else
                genre_count_hash[genre] = 1
            end
        end
        genre_count_hash
    end

    # long way lol
    # def self.artist_count
    #     artist_count_hash = {}
    #     @@artists.each do |artist|
    #         if artist_count_hash.key?(artist)
    #             artist_count_hash[artist] += 1
    #         else
    #             artist_count_hash[artist] = 1
    #         end
    #     end
    #     artist_count_hash
    # end

    # tally method
    def self.artist_count
        @@artists.tally
    end
end