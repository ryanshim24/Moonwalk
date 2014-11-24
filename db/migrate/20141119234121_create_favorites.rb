class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :price
      t.string :address
      t.string :link
      t.integer :user_id

      t.timestamps
    end
  end
end
