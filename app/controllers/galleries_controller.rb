class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.find(params[:id])
    @shoot = params[:shoot_id].blank? ? @gallery.shoots.first : Shoot.find(params[:shoot_id])
    @photo = params[:photo_id].blank? ? @shoot.photos.first : Photo.find(params[:photo_id])
  end
  
end
