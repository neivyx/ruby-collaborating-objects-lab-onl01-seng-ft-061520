class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  


  def self.new_by_filename(filename) #not working
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end













# class Song
#     attr_accessor :artist, :name
  
#     def initialize(name)
#       @name = name
#     end
  
#     def artist_name=(name)
#       self.artist = Artist.find_or_create_by_name(name)
#       artist.add_song(self)
#     end
  
#     def self.new_by_filename(file)
#       song_info = file.chomp(".mp3").split(" - ")
#       song = Song.new(song_info[1])
#       song.artist_name = song_info[0]
#       song
#     end




  











# class Song

#     attr_accessor :name, :artist

#     def initialize(name)
#         @name = name
        
#     end

#     def artist_name=(name)
#         self.artist = Artist.find_or_create_by_name(name)
#         artist.add_song(self)
#     end


    # def self.new_by_filename(file)
    #     song_info = file.chomp(".mp3").split(" - ")
    #     song = Song.new(song_info[1])
    #     song.artist_name = song_info[0]
    #     song
    #   end
    # end

    # def self.all 
    #     @@all
    # end

    # def song
    #     Song.all.select do |song|song.artist==self

    # end
# end

    # def self.new_by_filename

    # end


# end