class AddAttachmentFuReqsToPhotos < ActiveRecord::Migration
  def self.up
    add_column :photos, :content_type, :string
    add_column :photos, :filename, :string
    add_column :photos, :size, :integer
    add_column :photos, :width, :integer
    add_column :photos, :height, :integer
  end

  def self.down
    remove_column :photos, :height
    remove_column :photos, :width
    remove_column :photos, :size
    remove_column :photos, :filename
    remove_column :photos, :content_type
  end
end
