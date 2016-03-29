class CreateCombineStats < ActiveRecord::Migration
  def change
    create_table :combine_stats do |t|

      t.timestamps
    end
  end
end
