class AddPositionIdToPositionSkill < ActiveRecord::Migration
  def change
    add_column :position_skills, :position_id, :integer
  end
end
