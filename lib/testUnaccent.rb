require 'unaccent'

class TestUnaccent 
	
	attr_accessor :chaine

	include Unaccent
	
	def initialize()
		@chaine = "Yééé mèn je suis là, la chaîne toute ouïe !"
	end

	def to_s 
		puts @chaine
	end
end
