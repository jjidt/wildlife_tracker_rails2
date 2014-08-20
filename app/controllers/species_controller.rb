class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end
end
