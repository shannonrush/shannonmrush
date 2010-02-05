class Photo < ActiveRecord::Base
  has_attachment :content_type => :image,
                 :storage => :file_system
                 

  validates_as_attachment
  
  belongs_to :shoot
  
  def self.get_previous(photo)
    previous = Photo.find(:first, :conditions => ["shoot_id = ? AND number = ?", photo.shoot.id, photo.number - 1])
    if previous
      return previous.id
    else
      return photo.shoot.photos.last.id
    end
  end
  
  def self.get_next(photo)
    next_photo = Photo.find(:first, :conditions => ["shoot_id = ? AND number = ?", photo.shoot.id, photo.number + 1])
    if next_photo
      return next_photo.id
    else
      return photo.shoot.photos.first.id
    end
  end
  
  

end
