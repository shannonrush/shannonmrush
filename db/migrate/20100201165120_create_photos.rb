class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :shoot_id
      t.integer :number
      t.binary :file

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
