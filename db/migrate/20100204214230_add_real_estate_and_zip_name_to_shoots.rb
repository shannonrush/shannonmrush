class AddRealEstateAndZipNameToShoots < ActiveRecord::Migration
  def self.up
    add_column :shoots, :real_estate, :boolean
    add_column :shoots, :zip_name, :string
  end

  def self.down
    remove_column :shoots, :zip_name
    remove_column :shoots, :real_estate
  end
end
