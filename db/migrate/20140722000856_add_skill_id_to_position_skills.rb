class AddSkillIdToPositionSkills < ActiveRecord::Migration
  def change
    add_reference :position_skills, :skill, index: true
  end
end
