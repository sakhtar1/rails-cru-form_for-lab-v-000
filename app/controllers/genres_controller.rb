class GenresController < ApplicationController

  def show
    @genre = Artist.find(params[:id])
  end

  def new
    @genre = Artist.new
  end

  def create
    @genre = Artist.new
    @genre = Artist.new(genre_params(name: [:genre][:name], bio: [:genre][:bio]))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Artist.find(params[:id])
    @genre.update(genre_params(name: [:genre][:name], bio: [:genre][:bio]))
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
