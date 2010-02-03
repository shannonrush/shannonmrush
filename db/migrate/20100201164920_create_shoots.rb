class CreateShoots < ActiveRecord::Migration
  def self.up
    create_table :shoots do |t|
      t.integer :gallery_id
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :shoots
  end
end
