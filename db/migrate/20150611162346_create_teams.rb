class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      
      t.string :name, :null => false
      t.string :college_name
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :league, :null => false
      t.string :division, :null => false

      t.timestamps
    end
  end
end
