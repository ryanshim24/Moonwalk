class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :city
      t.string :address
      t.integer :price
      t.integer :bedrooms
      t.integer :income
      t.integer :taxes
      t.integer :units
      t.string :title
      t.string :image
      t.timestamps
    end
  end 
end