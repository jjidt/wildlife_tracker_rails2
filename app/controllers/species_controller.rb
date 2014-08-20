class SpeciesController < ApplicationController
  def index
    @specieses = Species.all
    render('species/index.html.erb')
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end

  def create
    @species = Species.new(params[:species])
    if @species.save(params[:species])
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end
end
