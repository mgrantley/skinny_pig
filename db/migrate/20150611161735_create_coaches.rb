class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.date :dob, :null => false
      t.string :hometown, :null => false
      t.string :highschool
      t.string :college
      t.int :experience
      t.boolean :former_college_player, :null => false
      t.boolean :former_pro_player, :null => false

      t.timestamps
    end
  end
end
