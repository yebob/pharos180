class AddSkillIdToPositionSkill < ActiveRecord::Migration
  def change
    add_column :position_skills, :skill_id, :integer
  end
end
