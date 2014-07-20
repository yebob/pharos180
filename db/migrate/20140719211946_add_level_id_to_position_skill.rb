class AddLevelIdToPositionSkill < ActiveRecord::Migration
  def change
    add_column :position_skills, :level_id, :integer
  end
end
