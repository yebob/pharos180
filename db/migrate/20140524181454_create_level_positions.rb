class CreateLevelPositions < ActiveRecord::Migration
  def change
    create_table :level_positions do |t|
      t.string :name

      t.timestamps
    end
  end
end
