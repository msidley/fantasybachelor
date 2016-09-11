class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.integer :points
      t.integer :extra1
      t.text :extra2

      t.timestamps

    end
  end
end
