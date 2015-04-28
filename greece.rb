require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:louli.sqlite3"

class Donnees < ActiveRecord::Base
end


# RECUPERER UNE INFO A L'URL SUIVANTE
get '/liste_inscription' do 
	erb :page
end

# AJOUTER UNE INFO A LA BASE DE DONNE
post '/resultat' do
	Donnees.create(params)
	erb :resultat
end