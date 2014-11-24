class CreateAverageRents < ActiveRecord::Migration
  def change
    create_table :average_rents do |t|
      t.string :city
      t.integer :studio
      t.integer :br1
      t.integer :br2
      t.integer :br3
      t.integer :br4
      t.integer :br5
      t.timestamps
    end
  end
end
