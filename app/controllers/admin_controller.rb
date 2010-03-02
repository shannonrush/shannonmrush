class AdminController < ApplicationController
  
  before_filter :login_required

  def index
    @photo = Photo.new
    @photo.shoot_id = params[:shoot_id]
  end

  def upload_photos
    number = Shoot.get_number(params[:photo][:shoot_id])
    count = 0
    params[:uploaded_data].each do |p|    
      photo = Photo.new(params[:photo])
      photo.number = number
      photo.uploaded_data = p
      if params["orientation_#{count}"] == "landscape"
        photo.width = 375
        photo.height = 250
      else
        photo.width = 250
        photo.height = 375
      end
      photo.save
      count += 1
      number += 1
    end
      redirect_to :action => :index, :shoot_id => params[:photo][:shoot_id]
  end
  
  def create_gallery
    Gallery.create(params[:gallery])
    redirect_to :action => :add_shoot
  end
  
  def create_shoot
    Shoot.create(params[:shoot])
    redirect_to :action => :index
  end
  

end
