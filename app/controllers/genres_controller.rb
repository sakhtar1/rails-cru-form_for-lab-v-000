  @genre.saveclass GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre = Genre.new(genre_params([:genre][:name])
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params([:genre][:name]))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  private

    def genre_params(*args)
      params.require(:genre).permit(*args)
    end

end
