class CreateUserLeagues < ActiveRecord::Migration
  def change
    create_table :user_leagues do |t|
      t.integer :user_id
      t.integer :league_id
      t.boolean :commissioner
      t.boolean :selected_contestants
      t.integer :point_total
      t.integer :points_last_week
      t.boolean :league_locked
      t.integer :extra1
      t.text :extra2

      t.timestamps

    end
  end
end
