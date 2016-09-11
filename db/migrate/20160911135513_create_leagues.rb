class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.string :password
      t.text :motto
      t.date :league_locked_date
      t.integer :extra1
      t.text :extra2

      t.timestamps

    end
  end
end
