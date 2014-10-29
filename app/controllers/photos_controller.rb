class PhotosController < ApplicationController

  def new
    @photo = Photo.create(photo: params[:photo])
    render status: 200, json: {}
  end

  def create
  end

end