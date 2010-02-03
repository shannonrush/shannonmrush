class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.column :name, :string
      t.column :password, :string

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
