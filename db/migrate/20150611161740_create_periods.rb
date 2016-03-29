class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      
      t.datetime :date, :null => false
      t.belongs_to :advanced_stat
      t.belongs_to :basic_stat
      t.belongs_to :coach
      t.belongs_to :combine_stat
      t.integer :nfl_week
      t.belongs_to :player
      t.belongs_to :profile
      t.belongs_to :record
      t.belongs_to :team

      t.timestamps
    end
  end
end
