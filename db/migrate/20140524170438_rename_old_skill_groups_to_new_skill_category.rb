class RenameOldSkillGroupsToNewSkillCategory < ActiveRecord::Migration
  def change
    rename_table :skill_groups, :skill_categories
  end
end
