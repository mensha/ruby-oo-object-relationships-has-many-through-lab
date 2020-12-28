require 'pry'

class Artist
	attr_reader :name 
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(name, genre)
			n_song = Song.new(name, self, genre)                           
	end

	def songs
		Song.all.select {|song| song.artist == self} #retrns all songs associated witht his artist
	end

	def genres
		self.songs.collect {|song| song.genre}	# has many genres thru the songs,,returns array of all the genres belonging																	
	end																								#	artist instance

	
                                 


end
