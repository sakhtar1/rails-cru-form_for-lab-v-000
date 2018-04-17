class SongsController < ApplicationController

    def index
      @artists = Artist.all
      @genres = Genre.all
      @songs = Song.all
    end

    def show
      @song = Song.find(params[:id])
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.new
      @song = Song.create(name: params([:song][:name]), artist_id: @artist.id, genre_id: @genre.id)
      @song.save
      redirect_to song_path(@song)
    end

    def update
      @song = Song.find(params[:id])
      @song.update(name: params([:song][:name]), artist_id: @artist.id, genre_id: @genre.id)
      redirect_to song_path(@song)
    end

    def edit
      @song = Song.find(params[:id])
    end



end
