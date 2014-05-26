class AddSkillIdToSkillRelevance < ActiveRecord::Migration
  def change
    add_column :skill_relevances, :skill_id, :integer
  end
end
