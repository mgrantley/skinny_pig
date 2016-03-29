class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :hometown, :null => false
      t.date :dob, :null => false
      t.int :experience

      t.timestamps
    end
  end
end
