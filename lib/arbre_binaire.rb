require 'noeud'

class ArbreBinaire 
	
	attr_accessor :sommet
	include Enumerable	
	
	# Constructeur de notre classe
	# 
	# @param sommet [Noeud]
	def initialize(sommet)
		@sommet = sommet
	end
	
	# Getter permettant de récupèrer la valeur du sommet de l'arbre
        #
        # @return valeur [int] la valeur du sommet (noeud)
	def sommetArbre
		return @sommet.valeur
	end
	
	# Méthode pour ajouter un noeud a notre arbre
        #
        # @param valeur [int] la valeur à mettre dans ce nouveau noeud
	def ajouter(valeur)
		ajouterValeur(@sommet,valeur)
	end
	
	# Méthode principale pour ajouter un nouveau noeud à notre arbre.
        #
        # @param noeud [Noeud] le noeud a ajouter
	# @param valeur [int] sa valeur 
	def ajouterValeur(noeud,valeur)
		if noeud == nil
			return Noeud.new(valeur)
		end
		if noeud.valeur == valeur
			return
		end
		if valeur < noeud.valeur
			
			if (noeud.gauche == nil)
				noeud.gauche = ajouterValeur(noeud.gauche,valeur)
			else
				ajouterValeur(noeud.gauche,valeur)
			end
			
			
		else 
		if (noeud.droite == nil)
				noeud.droite = ajouterValeur(noeud.droite,valeur)
			else
				ajouterValeur(noeud.droite,valeur)
			end
			
		end
	end
	
	# Méthode pour rechercher une valeur (=un noeud)
        #
        # @param valeur [int]
	def recherche (valeur)
		rechercheAvecSommet(@sommet,valeur)
	end
	
	# Méthone pour rechercher à partir du sommet
        #
        # @param noeud [Noeud] le noeud
	# @param valeur [int] la valeur du noeud
	def rechercheAvecSommet(noeud, valeur)
		if noeud == nil
			return
		end
		if noeud.valeur == valeur
			return noeud
		end
		if valeur < noeud.valeur
			rechercheAvecSommet(noeud.gauche, valeur)		
		else
			rechercheAvecSommet(noeud.droite, valeur)			
		end 

	end
	
	# Méthode chaques de notre classe (essai)
        #
        # @block block
	def chaques(&bloc)
		yield bloc.call if !bloc.nil?
	end
	
	# Redéfinition du each
	def each(&block)
		block.call(@sommet)
		@sommet.gauche.each(&block) if @sommet.gauche
		@sommet.droite.each(&block) if @sommet.droite
	end
end
