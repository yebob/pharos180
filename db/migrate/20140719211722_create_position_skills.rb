class CreatePositionSkills < ActiveRecord::Migration
  def change
    create_table :position_skills do |t|
      t.references :position, index: true
      t.references :level, index: true
      t.references :skill, index: true

      t.timestamps
    end
  end
end
