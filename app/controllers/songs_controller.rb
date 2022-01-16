class SongsController < ApplicationController

  def index
    render json: Song.all.as_json
  end

  def show
    render json: Song.find(params[:id]).as_json
  end

  def create
    song = Song.new(
      artist: params[:artist],
      title: params[:title],
      album: params[:album],
      year: params[:year]
    )
    song.save
    render json: song.as_json
  end

  def update
    song = Song.find(params[:id])
    song.artist = params[:artist] || song.artist
    song.title = params[:title] || song.title
    song.album = params[:album] || song.album
    song.year = params[:year] || song.year
    song.save
    render json: song.as_json
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: {message: "The song was destroyed!!!"}
  end

end
