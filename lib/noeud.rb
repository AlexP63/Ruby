 
class Noeud
	attr_accessor :valeur
	attr_accessor :gauche
	attr_accessor :droite
	
	include Enumerable
	
	def initialize valeur
		@valeur = valeur
		@gauche = nil
		@droite = nil
	end
	
	def each(&block)
		block.call(@valeur)
		@gauche.each(&block) if @gauche
		@droite.each(&block) if @droite
	end
end 
