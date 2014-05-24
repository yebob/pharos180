class AddSpecializationIdToSkillRelevances < ActiveRecord::Migration
  def change
    add_column :skill_relevances, :specialization_id, :integer
  end
end
