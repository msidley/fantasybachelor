class CreateFantasyContestants < ActiveRecord::Migration
  def change
    create_table :fantasy_contestants do |t|
      t.integer :cast_id
      t.integer :user_league_id
      t.integer :extra1
      t.text :extra2

      t.timestamps

    end
  end
end
