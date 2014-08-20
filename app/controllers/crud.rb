module CRUD
  def index
    @specieses = Species.order(:name)
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

  def edit
    @species = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

  def delete
    @species = Species.find(params[:id])
    @species.destroy
    redirect_to('/')
  end
end
