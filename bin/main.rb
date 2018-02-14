#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),"..","lib"))


require 'arbre_binaire'
require 'testUnaccent'

monArbre = ArbreBinaire.new (Noeud.new(14))

monArbre.ajouter(18)
monArbre.ajouter(8)
monArbre.ajouter(33)
monArbre.ajouter(52)
monArbre.ajouter(7)

puts monArbre.sommet.valeur

##Pour bénéficier des méthodes de conteneurs, on implémente Enumerable

val = monArbre.recherche(8)
if val != nil
	puts "recherche"
	puts val.valeur
end

val = puts monArbre.recherche(15)
if val != nil
	puts val.valeur
end

##On affiche l'arbre avec le each

monArbre.each do |x|
	puts x
end

##On créer un objet testUnaccent pour tester notre module

objetTest = TestUnaccent.new()
puts objetTest.to_us
