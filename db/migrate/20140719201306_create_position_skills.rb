class CreatePositionSkills < ActiveRecord::Migration
  def change
    create_table :position_skills do |t|

      t.timestamps
    end
  end
end
