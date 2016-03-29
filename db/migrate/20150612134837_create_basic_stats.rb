class CreateBasicStats < ActiveRecord::Migration
  def change
    create_table :basic_stats do |t|
      
      t.integer :qb_rating
      t.integer :pass_attempts
      t.integer :pass_yards
      t.integer :int_thrown
      t.integer :rush_attempts
      t.integer :rush_yards
      t.integer :fumbles
      t.integer :rec_targets
      t.integer :rec_yards
      t.integer :pass_drops
      t.integer :sacks
      t.integer :tackles
      t.integer :tackles_fl
      t.integer :forced_fumbles
      t.integer :fumble_rec
      t.integer :int_rec
      t.integer :pass_breakups
      t.integer :touchdowns
      t.integer :kor_attempts
      t.integer :kor_yards
      t.integer :pr_attempts
      t.integer :pr_yards

      t.timestamps
    end
  end
end
