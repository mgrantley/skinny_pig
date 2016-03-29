class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      
      t.boolean :player, :null => false
      t.boolean :coach, :null => false
      t.integer :height
      t.integer :weight
      t.boolean :injured
      t.integer :injured_part
      t.boolean :surgery
      t.integer :side
      t.integer :position
      t.integer :style
      t.integer :o_scheme
      t.integer :d_scheme

      t.timestamps
    end
  end
end
