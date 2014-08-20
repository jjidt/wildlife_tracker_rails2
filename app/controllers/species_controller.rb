class SpeciesController < ApplicationController
  def index
    @specieses = Species.all
    render('species/index.html.erb')
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end
end
