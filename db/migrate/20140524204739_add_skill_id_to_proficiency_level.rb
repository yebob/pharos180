class AddSkillIdToProficiencyLevel < ActiveRecord::Migration
  def change
    add_column :proficiency_levels, :skill_id, :integer
  end
end
