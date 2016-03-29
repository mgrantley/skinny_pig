class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      
      t.belongs_to :coach
      t.belongs_to :player
      t.belongs_to :team

      t.timestamps
    end
  end
end
