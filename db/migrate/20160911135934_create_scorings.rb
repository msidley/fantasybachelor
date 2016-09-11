class CreateScorings < ActiveRecord::Migration
  def change
    create_table :scorings do |t|
      t.integer :cast_id
      t.integer :actions_id
      t.integer :week
      t.integer :extra1
      t.text :extra2

      t.timestamps

    end
  end
end
