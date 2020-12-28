require 'pry'
class Genre
    @@all = []
    attr_accessor :name
	def initialize(name)
		@name = name
		@@all << self
	end

	def songs
		Song.all.select {|song| song.genre == self}
	end

  def self.all
     @@all
	end
	
	def artists
		self.songs.collect {|song| song.artist} #has many artists thru songs
	end

	# def genres
	# 	self.songs.collect {|song| song.genre}	# has many genres thru the songs,,returns array of all the genres belonging																	
	# end	

                
        
            

end
