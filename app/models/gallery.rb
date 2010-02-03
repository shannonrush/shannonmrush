class Gallery < ActiveRecord::Base

  has_friendly_id :name
  default_scope :order => 'name ASC'
  
  
  has_many :shoots, :order => "date DESC"

end
