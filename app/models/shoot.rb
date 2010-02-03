class Shoot < ActiveRecord::Base

  belongs_to :gallery
  has_many :photos, :order => "number ASC"

  def self.get_number(shoot_id)
    photos = Shoot.find(shoot_id).photos.sort_by(&:number)
    if photos.blank?
      return 1
    else
      return photos.last.number + 1
    end
  end
  
end
