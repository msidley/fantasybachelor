class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.text :play
      t.integer :point_value
      t.integer :extra1
      t.text :extra2

      t.timestamps

    end
  end
end
